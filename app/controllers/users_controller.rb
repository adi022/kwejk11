class UsersController < ApplicationController
  before_action :authenticate_user!

  expose(:users) {User.all}
  expose(:user)

end
