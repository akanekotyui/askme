class QuestionPartTwosController < ApplicationController
  before_action :set_question_part_two, only: [:show, :edit, :update, :destroy]

  def index
    @question_part_twos = QuestionPartTwo.all
  end

  def show
  end

  def new
    @question_part_two = QuestionPartTwo.new
  end

  def edit
  end

  def create
    @question_part_two = QuestionPartTwo.new(question_part_two_params)

    respond_to do |format|
      if @question_part_two.save
        format.html { redirect_to @question_part_two, notice: 'Question part two was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @question_part_two.update(question_part_two_params)
        format.html { redirect_to @question_part_two, notice: 'Question part two was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @question_part_two.destroy
    respond_to do |format|
      format.html { redirect_to question_part_twos_url, notice: 'Question part two was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_question_part_two
      @question_part_two = QuestionPartTwo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def question_part_two_params
      params.require(:question_part_two).permit(:en, :jp, :zh, :code, :remark, :a_code)
    end
end
