require 'rails_helper'

RSpec.describe Balance, type: :model do
  context "attributes" do
    it { should respond_to(:item_description) }
    it { should respond_to(:item_price) }
    it { should respond_to(:merchant_address) }
    it { should respond_to(:merchant_name) }
    it { should respond_to(:purchase_count) }
    it { should respond_to(:purchaser_name) }
    it { should respond_to(:nickname) }
  end

  describe 'count price' do
    let!(:balance1) { create(:balance) }
    let!(:balance2) { create(:balance) }

    it 'return is 3' do
      expect(Balance.count_price).to eq 3
    end

    describe 'add Balances' do
      let!(:balance3) { create(:balance) }
      let!(:balance4) { create(:balance) }

      it 'return is 6' do
        expect(Balance.count_price).to eq 6
      end
    end
  end

  describe 'save attachement with Balance' do
    let!(:session) { OmniAuth.config.mock_auth[:twitter][:info] }
    let!(:file_path) { ActionDispatch::Http::UploadedFile.new({
            :filename => 'example_input.tab',
            :content_type => 'tab',
            :tempfile => File.new(Rails.root.join('spec/support/example_input.tab'))
          }) }
    let!(:balance) { Balance.new }

    context 'success' do
      it 'return true' do
        expect(balance.split_save(file_path, session[:nickname])).to eq true
      end

      context 'counts' do
        before(:each) do
          balance.split_save(file_path, session[:nickname])
        end

        it 'count Balance is 4' do
          expect(Balance.count).to eq 4
        end

        it 'count price is 30' do
          expect(Balance.count_price).to eq 30
        end
      end
    end

  end
end
