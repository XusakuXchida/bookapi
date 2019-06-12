require 'rails_helper'

RSpec.describe Book, type: :model do
  describe 'validation' do
    describe 'title' do
      it 'titleが空だとinvalidであること' do
        book = Book.new(
          title: '',
          description: 'hoge'
        )
        expect(book).not_to be_valid
      end
      it 'titleが250文字以上だとinvalidであること' do
        word = 'a' * 255
        book = Book.new(
          title: word,
          description: 'hoge'
        )
        expect(book).not_to be_valid
      end
    end

    describe 'description' do
      it 'descriptionが空だとinvalidであること' do
        book = Book.new(
          title: 'hoge',
          description: ''
        )        
        expect(book).not_to be_valid
      end
    end
  end
end
