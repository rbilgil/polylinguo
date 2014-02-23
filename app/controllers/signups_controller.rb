class SignupsController < ApplicationController
  def index

  end

  def create
    unless Signup.exists? email: params['signup'][:email]
      Signup.create email: params['signup'][:email]
      redirect_to root_path, notice: 'Thanks for signing up!'
    else
      redirect_to root_path, notice: 'You\'ve already signed up... We appreciate the enthusiasm!'
    end

  end
end
