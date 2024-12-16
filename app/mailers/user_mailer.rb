# frozen_string_literal: true

class UserMailer < ApplicationMailer
  helper LocationsHelper
  helper UsersHelper

  def my_community(user, community)
    @user = user
    @community = community

    bootstrap_mail(
      to: user.email,
      subject: 'Your PerfectlyOkay Community'
    )
  end

  def new_nearby_users(user, new_nearby_users)
    @user = user
    @new_nearby_users = new_nearby_users

    bootstrap_mail(
      to: user.email,
      subject: "New #{'Person'.pluralize(@new_nearby_users.length)} in Your Community"
    )
  end
end
