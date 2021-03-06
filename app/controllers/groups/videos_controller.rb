class Groups::VideosController < ApplicationController
  before_action :set_group, only: [:index, :new, :create]
  before_action :set_video, only: [:show, :edit, :update, :destroy]

  before_action :authorize_author!, only: [:edit, :update, :destroy]
  # before_action :set_user

  # GET /videos
  # GET /videos.json
  def index
    @videos = @group.videos
  end

  # GET /videos/1
  # GET /videos/1.json
  def show
  end

  # GET /videos/new
  def new
    @video = @group.videos.new
  end

  # GET /videos/1/edit
  def edit
  end

  # POST /videos
  # POST /videos.json
  def create
    @video = @group.videos.new(video_params)
    @video.user_id = current_user.id

    respond_to do |format|
      if @video.save
        format.html { redirect_to @group, notice: 'Video was successfully created.' }
        format.json { render action: 'show', status: :created, location: @video }
      else
        format.html { render action: 'new' }
        format.json { render json: @video.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /videos/1
  # PATCH/PUT /videos/1.json
  def update
    respond_to do |format|
      if @video.update(video_params)
        format.html { redirect_to @group, notice: 'Video was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @video.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /videos/1
  # DELETE /videos/1.json
  def destroy
    @video.destroy
    respond_to do |format|
      format.html { redirect_to group_url(@group) }
      format.json { head :no_content }
    end
  end

  private
    def set_group
      @group = Group.find(params[:group_id])
    end

    # Use callbacks to share common setup or constraints between actions.
    def set_video
      @video = Video.find(params[:id])
      @group = @video.group
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def video_params
      params.require(:video).permit(:source, :title, :description)
    end

    def authorize_author!
      unless (current_user.id == @video.user_id || current_user.role == 'admin')
        redirect_to @group, notice: "You do not have permission for this action."
      end
    end
end
