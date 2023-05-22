require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'ユーザー新規登録' do
    it 'nicknameが空だと登録できない' do
      user = User.new(nickname: '', email: 'kkk@gmail.com', password: '00000000', password_confirmation: '00000000')
      expect(user.errors.full_messages).to include("Nickname can't be blank")
    end
  end
end