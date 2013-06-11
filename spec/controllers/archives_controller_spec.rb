require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe ArchivesController do

  # This should return the minimal set of attributes required to create a valid
  # Archive. As you add validations to Archive, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    { "file" => "" }
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # ArchivesController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all archives as @archives" do
      archive = Archive.create! valid_attributes
      get :index, {}, valid_session
      assigns(:archives).should eq([archive])
    end
  end

  describe "GET show" do
    it "assigns the requested archive as @archive" do
      archive = Archive.create! valid_attributes
      get :show, {:id => archive.to_param}, valid_session
      assigns(:archive).should eq(archive)
    end
  end

  describe "GET new" do
    it "assigns a new archive as @archive" do
      get :new, {}, valid_session
      assigns(:archive).should be_a_new(Archive)
    end
  end

  describe "GET edit" do
    it "assigns the requested archive as @archive" do
      archive = Archive.create! valid_attributes
      get :edit, {:id => archive.to_param}, valid_session
      assigns(:archive).should eq(archive)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Archive" do
        expect {
          post :create, {:archive => valid_attributes}, valid_session
        }.to change(Archive, :count).by(1)
      end

      it "assigns a newly created archive as @archive" do
        post :create, {:archive => valid_attributes}, valid_session
        assigns(:archive).should be_a(Archive)
        assigns(:archive).should be_persisted
      end

      it "redirects to the created archive" do
        post :create, {:archive => valid_attributes}, valid_session
        response.should redirect_to(Archive.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved archive as @archive" do
        # Trigger the behavior that occurs when invalid params are submitted
        Archive.any_instance.stub(:save).and_return(false)
        post :create, {:archive => { "file" => "invalid value" }}, valid_session
        assigns(:archive).should be_a_new(Archive)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Archive.any_instance.stub(:save).and_return(false)
        post :create, {:archive => { "file" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested archive" do
        archive = Archive.create! valid_attributes
        # Assuming there are no other archives in the database, this
        # specifies that the Archive created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Archive.any_instance.should_receive(:update_attributes).with({ "file" => "" })
        put :update, {:id => archive.to_param, :archive => { "file" => "" }}, valid_session
      end

      it "assigns the requested archive as @archive" do
        archive = Archive.create! valid_attributes
        put :update, {:id => archive.to_param, :archive => valid_attributes}, valid_session
        assigns(:archive).should eq(archive)
      end

      it "redirects to the archive" do
        archive = Archive.create! valid_attributes
        put :update, {:id => archive.to_param, :archive => valid_attributes}, valid_session
        response.should redirect_to(archive)
      end
    end

    describe "with invalid params" do
      it "assigns the archive as @archive" do
        archive = Archive.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Archive.any_instance.stub(:save).and_return(false)
        put :update, {:id => archive.to_param, :archive => { "file" => "invalid value" }}, valid_session
        assigns(:archive).should eq(archive)
      end

      it "re-renders the 'edit' template" do
        archive = Archive.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Archive.any_instance.stub(:save).and_return(false)
        put :update, {:id => archive.to_param, :archive => { "file" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested archive" do
      archive = Archive.create! valid_attributes
      expect {
        delete :destroy, {:id => archive.to_param}, valid_session
      }.to change(Archive, :count).by(-1)
    end

    it "redirects to the archives list" do
      archive = Archive.create! valid_attributes
      delete :destroy, {:id => archive.to_param}, valid_session
      response.should redirect_to(archives_url)
    end
  end

end
