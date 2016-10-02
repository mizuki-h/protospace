require 'rails_helper'
describe PrototypesController do
  context 'with user login' do
    let(:user) { create(:user) }
    let(:login) { sign_in user }

     describe 'GET #index' do
      before do
        get :index
      end


     end

     describe 'GET #new' do
      before do
        get :new
      end
     end

     describe 'POST #create' do
      before do
        post :create, params
      end
     end

     describe 'GET #show' do
      before do
        get :show
      end
     end

     describe 'GET #edit' do
      before do
        get :edit
      end
     end

     describe 'PATCH #update' do
      before do
        patch :update, id:user, user: attributes_for(:user, name: 'aaaa')
      end
     end

     describe 'DELETE #destroy' do
     end
  end

  context 'without user login' do

    describe 'GET #new' do
     end

     describe 'POST #create' do
     end

     describe 'GET #show' do
     end

     describe 'PATCH #update' do
     end

     describe 'DELETE #destroy' do
     end
  end
end

