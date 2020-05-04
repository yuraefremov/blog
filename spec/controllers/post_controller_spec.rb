require 'rails_helper'
RSpec.describe PostsController, type: :controller  do
  context "GET posts#index" do
    it "returns a success response" do
      get :index
      expect(response).to be_success
    end  
  end
end