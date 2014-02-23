require 'spec_helper'

describe 'Landing Page' do
  describe 'GET /' do
     it 'should display the landing page' do
        visit index_path
        page.should have_content 'Polylinguo'
     end
  end
end
