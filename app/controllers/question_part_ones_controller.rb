class QuestionPartOnesController < ApplicationController
  before_action :set_question_part_one, only: [:show, :edit, :update, :destroy]

  def index
    @question_part_ones = QuestionPartOne.all
  end

  def show
  end

  def new
    @question_part_one = QuestionPartOne.new
  end

  def edit
  end

  def create
    @question_part_one = QuestionPartOne.new(question_part_one_params)

    respond_to do |format|
      if @question_part_one.save
        format.html { redirect_to @question_part_one, notice: 'Question part one was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @question_part_one.update(question_part_one_params)
        format.html { redirect_to @question_part_one, notice: 'Question part one was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @question_part_one.destroy
    respond_to do |format|
      format.html { redirect_to question_part_ones_url, notice: 'Question part one was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_question_part_one
      @question_part_one = QuestionPartOne.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def question_part_one_params
      params.require(:question_part_one).permit(:en, :jp, :zh, :q2_code, :remark)
    end
end
