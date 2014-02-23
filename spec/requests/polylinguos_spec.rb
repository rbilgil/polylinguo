require 'spec_helper'

describe 'Landing Page' do

  describe 'GET /' do

    it 'should display the landing page' do
      visit '/'
      page.should have_content 'Enter your e-mail to be notified when we launch'

      fill_in 'signup_email', with: 'test_email@test.com'
      click_button 'Sign up'
      page.should have_content 'Thanks for signing up!'

      email = Signup.find 1
      assert email
    end

    it 'should save e-mail to database' do

    end

  end

end
