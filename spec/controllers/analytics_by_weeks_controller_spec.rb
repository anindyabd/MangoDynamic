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

describe AnalyticsByWeeksController do

  # This should return the minimal set of attributes required to create a valid
  # AnalyticsByWeek. As you add validations to AnalyticsByWeek, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "week" => "1" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # AnalyticsByWeeksController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all analytics_by_weeks as @analytics_by_weeks" do
      analytics_by_week = AnalyticsByWeek.create! valid_attributes
      get :index, {}, valid_session
      assigns(:analytics_by_weeks).should eq([analytics_by_week])
    end
  end

  describe "GET show" do
    it "assigns the requested analytics_by_week as @analytics_by_week" do
      analytics_by_week = AnalyticsByWeek.create! valid_attributes
      get :show, {:id => analytics_by_week.to_param}, valid_session
      assigns(:analytics_by_week).should eq(analytics_by_week)
    end
  end

  describe "GET new" do
    it "assigns a new analytics_by_week as @analytics_by_week" do
      get :new, {}, valid_session
      assigns(:analytics_by_week).should be_a_new(AnalyticsByWeek)
    end
  end

  describe "GET edit" do
    it "assigns the requested analytics_by_week as @analytics_by_week" do
      analytics_by_week = AnalyticsByWeek.create! valid_attributes
      get :edit, {:id => analytics_by_week.to_param}, valid_session
      assigns(:analytics_by_week).should eq(analytics_by_week)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new AnalyticsByWeek" do
        expect {
          post :create, {:analytics_by_week => valid_attributes}, valid_session
        }.to change(AnalyticsByWeek, :count).by(1)
      end

      it "assigns a newly created analytics_by_week as @analytics_by_week" do
        post :create, {:analytics_by_week => valid_attributes}, valid_session
        assigns(:analytics_by_week).should be_a(AnalyticsByWeek)
        assigns(:analytics_by_week).should be_persisted
      end

      it "redirects to the created analytics_by_week" do
        post :create, {:analytics_by_week => valid_attributes}, valid_session
        response.should redirect_to(AnalyticsByWeek.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved analytics_by_week as @analytics_by_week" do
        # Trigger the behavior that occurs when invalid params are submitted
        AnalyticsByWeek.any_instance.stub(:save).and_return(false)
        post :create, {:analytics_by_week => { "week" => "invalid value" }}, valid_session
        assigns(:analytics_by_week).should be_a_new(AnalyticsByWeek)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        AnalyticsByWeek.any_instance.stub(:save).and_return(false)
        post :create, {:analytics_by_week => { "week" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested analytics_by_week" do
        analytics_by_week = AnalyticsByWeek.create! valid_attributes
        # Assuming there are no other analytics_by_weeks in the database, this
        # specifies that the AnalyticsByWeek created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        AnalyticsByWeek.any_instance.should_receive(:update).with({ "week" => "1" })
        put :update, {:id => analytics_by_week.to_param, :analytics_by_week => { "week" => "1" }}, valid_session
      end

      it "assigns the requested analytics_by_week as @analytics_by_week" do
        analytics_by_week = AnalyticsByWeek.create! valid_attributes
        put :update, {:id => analytics_by_week.to_param, :analytics_by_week => valid_attributes}, valid_session
        assigns(:analytics_by_week).should eq(analytics_by_week)
      end

      it "redirects to the analytics_by_week" do
        analytics_by_week = AnalyticsByWeek.create! valid_attributes
        put :update, {:id => analytics_by_week.to_param, :analytics_by_week => valid_attributes}, valid_session
        response.should redirect_to(analytics_by_week)
      end
    end

    describe "with invalid params" do
      it "assigns the analytics_by_week as @analytics_by_week" do
        analytics_by_week = AnalyticsByWeek.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        AnalyticsByWeek.any_instance.stub(:save).and_return(false)
        put :update, {:id => analytics_by_week.to_param, :analytics_by_week => { "week" => "invalid value" }}, valid_session
        assigns(:analytics_by_week).should eq(analytics_by_week)
      end

      it "re-renders the 'edit' template" do
        analytics_by_week = AnalyticsByWeek.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        AnalyticsByWeek.any_instance.stub(:save).and_return(false)
        put :update, {:id => analytics_by_week.to_param, :analytics_by_week => { "week" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested analytics_by_week" do
      analytics_by_week = AnalyticsByWeek.create! valid_attributes
      expect {
        delete :destroy, {:id => analytics_by_week.to_param}, valid_session
      }.to change(AnalyticsByWeek, :count).by(-1)
    end

    it "redirects to the analytics_by_weeks list" do
      analytics_by_week = AnalyticsByWeek.create! valid_attributes
      delete :destroy, {:id => analytics_by_week.to_param}, valid_session
      response.should redirect_to(analytics_by_weeks_url)
    end
  end

end
