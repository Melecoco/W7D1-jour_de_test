class PageClubController < ApplicationController
  def show
    @user = User.all
  end
end
