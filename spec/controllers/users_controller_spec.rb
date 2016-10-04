require 'rails_helper'
describe UsersController do
  context 'with user login' do
    let(:user) { create(:user) }
    let(:login) { sign_in user }

    describe 'GET #show' do
      before do
        get :show, id:user
      end
      it "assigns the requested user to @user" do
        expect(assigns(:user)).to eq(user)
      end
      it "renders the :show templetes" do
        expect(response).to render_template :show
      end
    end

    describe 'GET #edit' do
      before do
        get :edit, id:user
      end
      it "assigns the requested user to @user" do
        expect(assigns(:user)).to eq(user)
      end
      it "renders the :edit templetes" do
       expect(response).to render_template :edit
      end
    end

    describe 'PATCH #update' do
      before do
        patch :update, id:user, user: attributes_for(:user, name: 'aaaa')
      end
      it "assigns the requested user to @user" do
        expect(assigns(:user)).to eq(user)
      end
      it "changes @user's attributes" do
        expect(user.name).to eq(user)
      end
      it "redirects root path" do
          expect(response).to redirect_to user_path
      end
      it "send flash message" do
         expect(flash[:notice]).to eq 'Updated Successfully'
      end
    end
  end

  context 'without user login' do
    describe 'GET #edit' do
      it "redirect sign_in page" do
        get :edit, id:user
        expect(response).to redirect_to new_user_session_path
      end
    end

    describe 'PATCH #update' do
      it "redirect sign_in page" do
        patch :update, id:user, user: attributes_for(:user, name: 'aaaa')
        expect(response).to redirect_to new_user_session_path
      end
    end

  end
end

