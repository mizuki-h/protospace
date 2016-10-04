require 'rails_helper'
describe Prototype do
  describe 'association' do

    context "with comments" do
      it "deletes the comments when prototype is deleted" do
        prototype = build(:prototype)
        comment = create(:comment, prototype: prototype)
        expect{ prototype.destroy }.to change{ Comment.count }
     end
    end

    context "with likes" do
      it "deletes the likes when prototype is deleted" do
        prototype = build(:prototype)
        like = create(:like, prototype: prototype)
        expect{ prototype.destroy }.to change{ Like.count }
     end
    end

  end

  describe 'validations' do
    context 'with valid attribute' do
      it "has valid factory" do
        prototype = build(:prototype)
        expect(prototype).to be_valid
      end
    end

    context 'without valid attribute' do
      it "is missing a title" do
        prototype = build(:prototype, title: nil)
        prototype.valid?
        expect(user.errors[:title]).to include("can't be blank")
      end

      it "is missing a catchcopy" do
        prototype = build(:prototype, catchcopy: nil)
        prototype.valid?
        expect(user.errors[:catchcopy]).to include("can't be blank")
      end

      it "is missing a concept" do
        prototype = build(:prototype, concept: nil)
        prototype.valid?
        expect(user.errors[:concept]).to include("can't be blank")
      end
    end
  end

  describe '#posted_date' do
    it "return dates in a specified format" do
      prototype = build(:prototype)
      expect(prototype).to be_valid
    end
  end

  describe '#like_by?(user)' do
    context 'when liked by a user' do
      it "return true" do
        user = create(:user)
        prototype = create(:prototype, user: user)
        like = create(:like, prototype: prototype, user: user)
        expect(prototype.liked_by?(user)).to be_truthy
      end
    end

    context '#when not like by a user' do
      it "return false" do
        user = create(:user)
        prototype = create(:prototype, user: another_user)
        like = create(:like, prototype: prototype, user: another_user)
        expect(prototype.liked_by?(user)).to be_false
      end
    end
  end

end

