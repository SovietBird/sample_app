require 'rails_helper'

def full_title(page_title)
  base_title = "Ruby on Rails Tutorial Sample App"
  if page_title.empty?
    base_title
  else
    "#{base_title} | #{page_title}"
  end
end

RSpec.describe "UserPages", type: :request do

  #describe "GET /user_pages" do
  #  it "works! (now write some real specs)" do
  #    get user_pages_path
  #    expect(response).to have_http_status(200)
  #  end
  #end

  subject { page }

  describe "signup page" do
    before { visit signup_path}

    it { should have_content('Sign up') }
    it { should have_title(full_title('Sign up')) }
  end
end
