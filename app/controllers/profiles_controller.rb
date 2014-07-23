class ProfilesController < ApplicationController
  before_action :set_profile, only: [:show, :edit, :update, :destroy]

  before_filter :authenticate_user!
  before_filter :validate_user

  # GET /profiles
  # GET /profiles.json
  def index
    @profiles = Profile.all
  end

  # GET /profiles/1
  # GET /profiles/1.json
  def show
    @profile = Profile.find(params[:id])
    @analytics_by_weeks = @profile.analytics_by_weeks.all
    @recent_week = @analytics_by_weeks.last
    @orders = current_user.orders.limit(5)
    @last_order = current_user.orders.last
    if @last_order.blank?
      #do nothing
    else
      @last_order_items = @last_order.line_items.all
    end

  end

  # GET /profiles/new
  def new
    @profile = Profile.new
  end

  # GET /profiles/1/edit
  def edit

  end

  # POST /profiles
  # POST /profiles.json
  def create
    
  end

  # PATCH/PUT /profiles/1
  # PATCH/PUT /profiles/1.json
  def update
    
  end

  # DELETE /profiles/1
  # DELETE /profiles/1.json
  def destroy
    @profile.destroy
    respond_to do |format|
      format.html { redirect_to root_url, notice: 'Profile was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
   def set_profile
      @profile = Profile.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def profile_params
      params.require(:profile).permit(:user_id)
    end

    def validate_user
      if current_user.id == Profile.find(params[:id]).user_id
        #allow
      else
        #block
         flash[:error] = "You must login to continue"
         redirect_to(root_url)
      end
    end

end
