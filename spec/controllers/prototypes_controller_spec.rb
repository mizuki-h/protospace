require 'rails_helper'
describe PrototypesController do
  context 'with user login' do
    let(:user) { create(:user) }
    let(:login) { sign_in user }

     describe 'GET #index' do
      before do
        get :index
      end

      it "assigns the requested prototypes to @prototypes" do
      end

      it "render the :index templete" do
      end

     end

     describe 'GET #new' do
      before do
        get :new
      end

      it "assigns the requested prototypes to @prototypes" do
      end

      it "render the :new templete" do
      end
     end

     describe 'POST #create' do
      before do
        post :create, params
      end

      context "with valid attributes" do

        it "saves the new prototype in the database" do
        end

        it "redirect to root_path" do
        end

        it "show flash message tO show save the prototype successfully" do
        end

      end

      context "with invalid attributes" do
        it "doesn't save the new prototype in the database" do
        end

        it "redirect to new_prototype_path" do
        end

        it "show flash message tO show save the prototype successfully" do
        end
      end

     end

     describe 'GET #show' do
      before do
        get :show
      end

      it "assigns the requested prototype to @prototype" do
      end

      it "assigns the requested comment to @comment" do
      end

      it "assigns likes associated with prototype to @likes " do
      end

      it "renders the :show templete" do
      end

     end

     describe 'GET #edit' do
      before do
        get :edit
      end

      it "assigns the requested prototype to @prototype" do
      end

      it "assigns main_image to @main_image" do
      end

      it "assigns sub_image to @sub_image " do
      end

      it "renders the :edit templete" do
      end

     end

     describe 'PATCH #update' do
      before do
        patch :update, id:user, user: attributes_for(:user, name: 'aaaa')
      end
       context "with valid attributes" do
        it "assigns the requested prototype to @prototype" do
        end

        it "assigns the requested comment to @comment" do
        end

        it "update attributes of prototype" do
        end

        it "redirect to root_path" do
        end

        it "show flash message to show update the prototype successfully" do
        end

       end

       context "with invalid attributes" do
        it "assigns the requested prototype to @prototype" do
        end

        it "doesn't ave the new prototype" do

        end

        it "renders the :show templete" do
        end

        it "show flash message to show update the prototype successfully" do
        end

       end
     end

     describe 'DELETE #destroy' do

      it "assigns the requested prototype to @prototype" do
        end

        it "deletes the prototype" do

        end

        it "redirect to root_path" do
        end

        it "show flash message to show delete the prototype successfully" do
        end
  end

  context 'without user login' do

    describe 'GET #new' do
      it "redirects sign_in page" do
      end
     end

     describe 'POST #create' do
      it "redirects sign_in page" do
      end
     end

     describe 'GET #show' do
      it "redirects sign_in page" do
      end
     end

     describe 'PATCH #update' do
      it "redirects sign_in page" do
      end
     end

     describe 'DELETE #destroy' do
      it "redirects sign_in page" do
      end
     end
  end
end

