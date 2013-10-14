class UsersController < ApplicationController
  def index
    @users = User.by_karma.limit(25)
  end
end
