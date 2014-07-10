class AnalyticsByWeeksController < ApplicationController
  before_action :set_analytics_by_week, only: [:show, :edit, :update, :destroy]

  # GET /analytics_by_weeks
  # GET /analytics_by_weeks.json
  def index
    @analytics_by_weeks = AnalyticsByWeek.where(profile_id: current_user.profile.id)
  end

  # GET /analytics_by_weeks/1
  # GET /analytics_by_weeks/1.json
  def show
    @analytics_by_week = AnalyticsByWeek.find(params[:id])
  end

  # GET /analytics_by_weeks/new
  def new
    @analytics_by_week = AnalyticsByWeek.new
  end

  # GET /analytics_by_weeks/1/edit
  def edit
  end

  # POST /analytics_by_weeks
  # POST /analytics_by_weeks.json
  def create
    @analytics_by_week = AnalyticsByWeek.new(analytics_by_week_params)
    @analytics_by_week.profile_id = current_user.profile.id
    @analytics_by_week.user_id = current_user.id
    respond_to do |format|
      if @analytics_by_week.save
        format.html { redirect_to @analytics_by_week, notice: 'Analytics by week was successfully created.' }
        format.json { render :show, status: :created, location: @analytics_by_week }
      else
        format.html { render :new }
        format.json { render json: @analytics_by_week.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /analytics_by_weeks/1
  # PATCH/PUT /analytics_by_weeks/1.json
  def update
    respond_to do |format|
      if @analytics_by_week.update(analytics_by_week_params)
        format.html { redirect_to @analytics_by_week, notice: 'Analytics by week was successfully updated.' }
        format.json { render :show, status: :ok, location: @analytics_by_week }
      else
        format.html { render :edit }
        format.json { render json: @analytics_by_week.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /analytics_by_weeks/1
  # DELETE /analytics_by_weeks/1.json
  def destroy
    @analytics_by_week.destroy
    respond_to do |format|
      format.html { redirect_to analytics_by_weeks_url, notice: 'Analytics by week was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_analytics_by_week
      @analytics_by_week = AnalyticsByWeek.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def analytics_by_week_params
      params.require(:analytics_by_week).permit(:week, :weibo_followers, :email_signups, :seo_rank, :weibo_clicks, :profile_id)
    end
end
