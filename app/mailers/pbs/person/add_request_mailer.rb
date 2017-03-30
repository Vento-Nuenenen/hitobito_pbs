# encoding: utf-8

#  Copyright (c) 2012-2017, Pfadibewegung Schweiz. This file is part of
#  hitobito_pbs and licensed under the Affero General Public License version 3
#  or later. See the COPYING file at the top-level directory or at
#  https://github.com/hitobito/hitobito_pbs.


module Pbs::Person::AddRequestMailer
  extend ActiveSupport::Concern

  private

  def placeholder_recipient_name_with_salutation
    @recipient.salutation_value
  end

  def placeholder_recipient_names_with_salutation
    @recipients.map(&:salutation_value).join(', ')
  end

end
