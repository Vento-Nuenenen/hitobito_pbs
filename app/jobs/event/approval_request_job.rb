#  Copyright (c) 2012-2015, Pfadibewegung Schweiz. This file is part of
#  hitobito_pbs and licensed under the Affero General Public License version 3
#  or later. See the COPYING file at the top-level directory or at
#  https://github.com/hitobito/hitobito_pbs.

class Event::ApprovalRequestJob < BaseJob
  self.parameters = [:participation_id, :locale]

  def initialize(participation)
    super()
    @participation_id = participation.id
  end

  def perform
    return unless participation # may have been deleted again

    set_locale
    send_approval
  end

  def send_approval
    recipients = approvers
    if recipients.present?
      Event::ParticipationMailer.approval(participation, recipients).deliver_now
    end
  end

  def approvers
    Event::Approver.new(participation).current_approvers
  end

  def participation
    @participation ||= Event::Participation.find_by(id: @participation_id)
  end
end
