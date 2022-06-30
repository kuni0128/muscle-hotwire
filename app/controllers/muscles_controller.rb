class MusclesController < ApplicationController
  before_action :set_muscle, only: %i[ show edit update destroy ]

  # GET /muscles
  def index
    @search = Muscle.ransack(params[:q])
    @search.sorts = "id desc" if @search.sorts.empty?

    @muscles = @search.result.page(params[:page])
  end

  # GET /muscles/1
  def show
  end

  # GET /muscles/new
  def new
    @muscle = Muscle.new
  end

  # GET /muscles/1/edit
  def edit
  end

  # POST /muscles
  def create
    @muscle = Muscle.new(muscle_params)

    if @muscle.save
      # comment-in when render html instead of turbo_stream.erb
      # redirect_to @muscle, notice: "筋肉を登録しました"

      flash.now.notice = "筋肉を登録しました"
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /muscles/1
  def update
    if @muscle.update(muscle_params)
      # comment-in when render html instead of turbo_stream.erb
      # redirect_to @muscle, notice: "筋肉を更新しました"

      flash.now.notice = "筋肉を更新しました"
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /muscles/1
  def destroy
    @muscle.destroy
    redirect_to muscles_url, notice: "筋肉を削除しました"
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_muscle
      @muscle = Muscle.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def muscle_params
      params.require(:muscle).permit(:name, :code)
    end
end
