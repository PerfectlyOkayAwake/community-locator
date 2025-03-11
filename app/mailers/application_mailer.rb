# frozen_string_literal: true

class ApplicationMailer < ActionMailer::Base
  default from: 'PerfectlyOkay Community Locator <communitylocator@perfectlyokay.org>'
  layout 'bootstrap-mailer'

  before_deliver :log_email

  private

  def log_email
    Rails.logger.info("Sending email to #{mail.to} from #{mail.from} with subject '#{mail.subject}'")
  end
end
