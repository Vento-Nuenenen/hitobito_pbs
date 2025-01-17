#  Copyright (c) 2012-2024, Pfadibewegung Schweiz. This file is part of
#  hitobito and licensed under the Affero General Public License version 3
#  or later. See the COPYING file at the top-level directory or at
#  https://github.com/hitobito/hitobito_pbs.

require "spec_helper"

describe Person::LoginMailer do
  let(:sender) { people(:bulei) }
  let(:recipient) { people(:al_schekka) }
  let(:mail) { Person::LoginMailer.login(recipient, sender, "abcdef") }

  before :all do
    template = CustomContent.find_or_create_by key: described_class::CONTENT_LOGIN
    template.update!(
      label: "Login senden",
      subject: "Willkommen bei #{Settings.application.name}",
      body: "{recipient-name-with-salutation}<br/><br/>" \
        "Willkommen bei #{Settings.application.name}! Unter dem folgenden Link kannst du " \
        "dein Login Passwort setzen:<br/><br/>{login-url}<br/><br/>" \
        "Bis bald!<br/><br/>{sender-name}"
    )
  end

  subject { mail }

  its(:to) { is_expected.to eql [recipient.email] }
  its(:reply_to) { is_expected.to eql [sender.email] }
  its(:subject) { is_expected.to eql "Willkommen bei #{Settings.application.name}" }

  it "sends a mail with a html-body with interpolated placeholders" do
    body = subject.body.raw_source

    expect(body).to match(/Liebe\*r Torben/)
    expect(body).to match(/test.host\/users\/password\/edit\?reset_password_token=/)
  end
end
