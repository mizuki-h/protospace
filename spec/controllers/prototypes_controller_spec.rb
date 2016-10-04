require 'rails_helper'
describe PrototypesController do
  context 'with user login' do
    let(:user) { create(:user) }
    let(:login) { sign_in user }
    let!(:prototype) { create(:prototype) }

    let(:params) {{
      id: prototype.id,
      prototype: attributes_for(:prototype, name: 'samplename')
    }}

    let(:invalid_params) {{
      id: prototype,
      prototype: attributes_for(:prototype, title: nil)
    }}

     describe 'GET #index' do
      before do
        get :index
      end

      it "assigns the requested prototypes to @prototypes" do
        expect(assigns(:prototypes)).to include prototype
      end

      it "render the :index templete" do
        expect(response).to render_template :index
      end

     end

     describe 'GET #new' do
      before do
        get :new
      end

      it "assigns the requested prototypes to @prototypes" do
        expect(assigns(:prototype)).to be_a_new(Prototype)
      end

      it "render the :new templete" do
        expect(response).to render_template :new
      end
     end

     describe 'POST #create' do

      context "with valid attributes" do
        before do
        post :create, params
        end

        it "saves the new prototype in the database" do
          expect { post :create, params }.to change(Prototype, :count).by(1)
        end

        it "redirect to root_path" do
          expect(response).to redirect_to root_path
        end

        it "show flash message tO show save the prototype successfully" do
           expect(flash[:notice]).to eq 'Created Successfully'
        end

      end

      context "with invalid attributes" do
        before do
        post :create, invalid_params
        end

        it "doesn't save the new prototype in the database" do
          expect { post :create, invalid_params }.not_to change(Prototype, :count)
        end

        it "redirect to new_prototype_path" do
          expect(response).to redirect_to new_prototype_path
        end

        it "show flash message tO show save the prototype successfully" do
          expect(flash[:alert]).to eq 'error!!'
        end
      end

     end

     describe 'GET #show' do
      before do
        get :show, id: prototype
      end

      it "assigns the requested prototype to @prototype" do
        expect(assigns(:prototype)).to eq prototype
      end

      it "assigns the requested comment to @comment" do
        expect(assigns(:comment)).to be_a_new(Comment)
      end

      it "renders the :show templete" do
        expect(response).to render_template :show
      end

     end

     describe 'GET #edit' do
      before do
        get :edit, id:prototype
      end

      it "assigns the requested prototype to @prototype" do
         expect(assigns(:prototype)).to eq prototype

      end

      it "renders the :edit templete" do
        expect(response).to render_template :edit
      end

     end

     describe 'PATCH #update' do
      context "with valid attributes" do
        before do
          patch :update, params
        end
        it "assigns the requested prototype to @prototype" do
          expect(assigns(:prototype)).to eq prototype
        end

        it "update attributes of prototype" do
          prototype.reload
          expect(prototype.title).to eq 'hoge'
        end

        it "redirect to root_path" do
            expect(response).to redirect_to root_path
        end

        it "show flash message to show update the prototype successfully" do
          expect(flash[:notice]).to eq 'Updated Successfully'
        end
       end

       context "with invalid attributes" do
        before do
          patch :update, invalid_params
        end

        it "assigns the requested prototype to @prototype" do
           expect(assigns(:prototype)).to eq prototype
        end

        it "doesn't save the new prototype" do
          expect(prototype.title).not_to eq 'samplesample'

        end

        it "renders the :show templete" do
          expect(response).to render_template :edit
        end

        it "show flash message to show update the prototype successfully" do
          expect(flash[:alert]).to eq 'error!!'
        end
       end
     end

     describe 'DELETE #destroy' do
      before do
        delete :destroy, id: prototype
      end

      it "assigns the requested prototype to @prototype" do
        expect(assigns(:prototype)).to eq prototype
      end

      it "deletes the prototype" do
        expect{prototype.destroy}.to change(Prototype, :count).by(-1)
      end

      it "redirect to root_path" do
        expect(response).to redirect_to root_path
      end

      it "show flash message to show delete the prototype successfully" do
        expect(flash[:notice]).to eq 'Deleted Successfully'
      end
    end
  end

  context 'without user login' do

    describe 'GET #new' do
      it "redirects sign_in page" do
        get :new
        expect(response).to redirect_to new_user_session_path
      end
     end

     describe 'POST #create' do
      it "redirects sign_in page" do
        post :create
        expect(response).to redirect_to new_user_session_path
      end
     end

     describe 'GET #edit' do
      it "redirects sign_in page" do
        get :edit, id: prototype
        expect(response).to redirect_to new_user_session_path
      end
     end

     describe 'PATCH #update' do
      it "redirects sign_in page" do
        patch :update, id: prototype, prototype: attributes_for(:prototype)
        expect(response).to redirect_to new_user_session_path
      end
     end

     describe 'DELETE #destroy' do
      it "redirects sign_in page" do
        delete :destroy, id: prototype
        expect(response).to redirect_to new_user_session_path
      end
     end
  end
end

