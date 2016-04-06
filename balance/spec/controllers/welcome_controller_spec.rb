require 'rails_helper'

RSpec.describe WelcomeController, type: :controller do

  describe "GET 'index'" do
    let!(:balance) { create(:balance) }
    it "returns http success" do
      get 'index'
      expect(assigns(:price)).to eq(1.5)
    end
  end

end
