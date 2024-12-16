# frozen_string_literal: true

class ContactUsMailer < ApplicationMailer
  def new_message(name, email, message)
    @name = name
    @email = email
    @message = message

    bootstrap_mail(
      to: 'communitylocator@perfectlyokay.org',
      subject: "New message from #{@name}"
    )
  end
end
