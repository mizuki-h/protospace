require 'rails_helper'
describe PrototypeImage do
  describe '#create' do
    it "has the wrong content format" do
    end

    describe 'with valid attributes' do
      it "has a valid factory" do
        prototype_image = build(:prototype_image)
        expect(prototype_image).to be_valid
      end
    end

    describe 'without content attribute' do
      it "return error" do
        prototype_image = build(:prototype_image, content: nil)
        prototype_image.valid?
        expect(user.errors[:content]).to include("can't be blank")
      end
    end

    describe 'without status attribute' do
      it "return error" do
        prototype = build(:prototype, title: nil)
        prototype.valid?
        expect(user.errors[:title]).to include("can't be blank")
      end
    end

  end
end