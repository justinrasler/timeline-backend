class MyTimelinesController < ApplicationController
  before_action :set_my_timeline, only: %i[ show update destroy ]

  # GET /my_timelines
  def index
    @my_timelines = MyTimeline.all

    render json: @my_timelines
  end

  # GET /my_timelines/1
  def show
    render json: @my_timeline
  end

  # POST /my_timelines
  def create
    @my_timeline = MyTimeline.new(my_timeline_params)

    if @my_timeline.save
      render json: @my_timeline, status: :created, location: @my_timeline
    else
      render json: @my_timeline.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /my_timelines/1
  def update
    if @my_timeline.update(my_timeline_params)
      render json: @my_timeline
    else
      render json: @my_timeline.errors, status: :unprocessable_entity
    end
  end

  # DELETE /my_timelines/1
  def destroy
    @my_timeline.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_my_timeline
      @my_timeline = MyTimeline.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def my_timeline_params
      params.require(:my_timeline).permit(:post, :body)
    end
end
