require 'rails_helper'

describe BalancesController, type: :controller do

  before(:each) do
    session[:auth] = OmniAuth.config.mock_auth[:twitter]
    @file_path = ActionDispatch::Http::UploadedFile.new({
          :filename => 'example_input.tab',
          :content_type => 'tab',
          :tempfile => File.new(Rails.root.join('spec/support/example_input.tab'))
        })
  end

  describe "post" do
    it "should have Balance created" do
      post 'create', { attachment: @file_path}, {session: session }
      expect(Balance.all.size).to be(4)
    end
  end

  describe "GET #create" do
    it "returns http success" do
      post 'create', { attachment: @file_path}, {session: session }
      expect(response).to have_http_status(302)
    end
  end

end