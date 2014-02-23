class SignupsController < ApplicationController
  def index

  end

  def create
    Signup.create email: params['signup'][:email]
    redirect_to root_path, notice: 'Thanks for signing up!'
  end
end
