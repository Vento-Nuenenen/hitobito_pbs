#  Copyright (c) 2012-2024, Pfadibewegung Schweiz. This file is part of
#  hitobito_pbs and licensed under the Affero General Public License version 3
#  or later. See the COPYING file at the top-level directory or at
#  https://github.com/hitobito/hitobito_pbs.

# == Schema Information
#
# Table name: roles
#
#  id         :integer          not null, primary key
#  person_id  :integer          not null
#  group_id   :integer          not null
#  type       :string(255)      not null
#  label      :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  deleted_at :datetime
#

require "spec_helper"
describe Role do
  let(:role) { roles(:al_schekka) }

  describe "dates" do
    let(:now) { Time.zone.parse("2014-05-03 16:32:21") }

    before do
      allow(Time.zone).to receive_messages(now: now)
      role.update_column(:created_at, "2014-04-03 12:00:00")
    end

    context "are valid if" do
      it "created_at in the past" do
        expect(role).to be_valid
      end

      it "created_at after end_on in the past" do
        role.update_column(:end_on, "2014-04-03")
        expect(role).to be_valid
      end
    end
  end

  context "notification if person is on black list" do
    let(:group) { groups(:schekka) }
    let!(:person) { Fabricate(:person, first_name: "foo", last_name: "bar") }
    let(:last_email) { ActionMailer::Base.deliveries.last }

    before do
      allow_any_instance_of(BlackListMailer).to receive(:recipients).and_return("test@test.com")
    end

    it "is sent on role creation with black list person" do
      Fabricate(:black_list, first_name: "foo", last_name: "bar")

      expect do
        Role.create(group: group,
          person: person,
          type: Group::Abteilung::Sekretariat.sti_name)
      end.to change { ActionMailer::Base.deliveries.count }.by(1)

      expect(last_email.body).to include(person.full_name)
    end

    it "is not sent on role creation if person is not blacklisted" do
      expect do
        Role.create(group: group,
          person: person,
          type: Group::Abteilung::Sekretariat.sti_name)
      end.not_to change { ActionMailer::Base.deliveries.count }
    end
  end

  context "notification when gaining access to more person data" do
    let(:actuator) { people(:al_schekka) }
    let(:home_group) { groups(:schekka) }
    let(:foreign_group) { groups(:chaeib) }
    let(:person) { Fabricate(:person, first_name: "Asdf") }

    before { Person.stamper = actuator }
    after { Person.reset_stamper }

    it "is sent on role creation with more access" do
      Fabricate(Group::Abteilung::Sekretariat.name.to_sym, group: foreign_group, person: person)

      role = Role.new(group_id: home_group.id,
        person_id: person.id,
        type: Group::Abteilung::Sekretariat.sti_name)
      expect { role.save! }.to change { Delayed::Job.count }.by(1)

      job = GroupMembershipJob.new(person, actuator, home_group)
      expect(Delayed::Job.where(handler: job.to_yaml).count).to eq 1
    end

    it "is not sent on role creation with equal access" do
      Fabricate(Group::Abteilung::Sekretariat.name.to_sym, group: home_group, person: person)

      role = Role.new(group_id: home_group.id,
        person_id: person.id,
        type: Group::Abteilung::Revisor.sti_name)
      expect { role.save! }.not_to change { Delayed::Job.count }
    end

    it "is not sent on role creation for new person" do
      role = Role.new(group_id: home_group.id,
        person_id: person.id,
        type: Group::Abteilung::Sekretariat.sti_name)
      expect { role.save! }.not_to change { Delayed::Job.count }
    end

    it "is not sent on role update (not possible to gain access via update)" do
      groups(:sunnewirbu)
      role = Fabricate(Group::Abteilung::Revisor.name.to_sym, group: home_group, person: person)

      role.type = Group::Woelfe::Wolf.sti_name
      expect { role.save! }.not_to change { Delayed::Job.count }
    end

    it "is not sent on role destruction" do
      role = Fabricate(Group::Abteilung::Sekretariat.name.to_sym, group: home_group, person: person)

      expect { role.really_destroy! }.not_to change { Delayed::Job.count }
    end
  end

  context "primary group (regression for #7766)" do
    let(:person) { role.person }

    before { person.update_column :primary_group_id, role.group.id }

    it "should be reset if primary role is removed by setting end_on" do
      expect(person.primary_group_id).to eq(role.group.id)

      role.end_on = Time.zone.yesterday
      role.save!
      expect(role).not_to be_active

      expect(person.primary_group_id).to be_nil
    end

    it "should not be reset if secondary role is removed by setting deleted_at" do
      another_role = Fabricate(Group::Abteilung::Sekretariat.name.to_sym,
        group: groups(:patria), person: person)

      expect(person.primary_group_id).to eq(role.group.id)

      another_role.created_at = 3.days.ago
      another_role.end_on = Time.zone.yesterday
      another_role.save!

      expect(role).to be_active
      expect(another_role).not_to be_active
      expect(person.primary_group_id).to eq role.group.id
    end
  end
end
