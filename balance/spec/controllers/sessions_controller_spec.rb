require 'rails_helper'

RSpec.describe SessionsController, type: :controller do

  before(:each) do
    request.env['omniauth.auth'] = OmniAuth.config.mock_auth[:twitter]
  end

  it "should create authentication" do
    post :create, :provider => "twitter"
    expect(session[:auth][:info][:nickname]).to eq(request.env['omniauth.auth'][:info][:nickname])
  end

  it "should destroy session" do
    post :destroy
    expect(session[:auth]).to be(nil)
  end

end
