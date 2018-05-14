require 'rails_helper'

RSpec.describe UsersController, type: :controller do

  describe "GET #club" do
    it "returns http success" do
      get :club
      expect(response).to have_http_status(:success)
    end
  end

end
