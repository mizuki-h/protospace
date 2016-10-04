require 'rails_helper'
describe User do
  describe '#create' do
    context "with valid attributes" do
      it "is valid with a all information" do
        user = build(:user)
        expect(user).to be_valid
      end
    end

    context 'without valid attributes' do
      it 'is invalid without a name' do
         user = build(:user, name: nil)
         user.valid?
         expect(user.errors[:name]).to include("can't be blank")
      end

      it 'is invalid without a email' do
         user = build(:user, email: nil)
         user.valid?
         expect(user.errors[:email]).to include("can't be blank")
      end

      it 'is invalid without a password' do
        user = build(:user, password: nil)
        user.valid?
        expect(user.errors[:password]).to include("can't be blank")
      end

      it 'is invalid without a password_confirmation along with a password' do
        user = build(:user, password_confirmation: nil)
        user.valid?
        expect(user.errors[:password_confirmation]).to include("can't be blank")
      end

      it "is invalid with a duplicate email address" do
        user = create(:user)
        another_user = build(:user, email: user.email)
        another_user.valid?
        expect(another_user.errors[:email]).to include("already been taken")
      end

      it 'is invalid with a password than has less than 7 characters' do
        user = build(:user, password: 'aaaaaaa', password_confirmation: 'aaaaaaa')
        user.valid?
        expect(user.errors[:password]).to include("has less than 7 characters")
      end

    end
  end
end

