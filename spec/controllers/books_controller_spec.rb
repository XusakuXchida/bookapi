require 'rails_helper'

RSpec.describe BooksController, type: :controller do
  describe 'GET' do
    let(:book1) { FactoryBot.create(:book, title: 'hoge1', description: 'hogehoge1') }
    let(:book2) { FactoryBot.create(:book, title: 'hoge2', description: 'hogehoge2') }

    before do
      get :index
    end

    it 'responeseが　successであること' do
      expect(response).to be_success
    end
    it '200 OKであること' do
      expect(response.status).to eq 200
    end
  end
end
