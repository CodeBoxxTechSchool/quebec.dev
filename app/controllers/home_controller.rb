class HomeController < ApplicationController
  def show
    @developers = Developer
      .visible
      .includes(:role_type).with_attached_avatar
      .limit(6)
    # .actively_looking.newest_first

    Analytics::Event.home_page_viewed(current_user, cookies)
  end
end
