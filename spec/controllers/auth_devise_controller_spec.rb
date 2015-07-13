require 'rails_helper'

RSpec.describe HomeController, type: :controller do
  scenario "blocks unauthenticated access" do
    sign_in nil

    get :index

    response.should redirect_to(new_user_session_path)
  end

  scenario "allows authenticated access" do
    sign_in

    get :index

    response.should be_success
  end
end
