class QuestionPartTwosController < ApplicationController
  before_action :set_question_part_two, only: [:show, :edit, :update, :destroy]

  # GET /question_part_twos
  # GET /question_part_twos.json
  def index
    @question_part_twos = QuestionPartTwo.all
  end

  # GET /question_part_twos/1
  # GET /question_part_twos/1.json
  def show
  end

  # GET /question_part_twos/new
  def new
    @question_part_two = QuestionPartTwo.new
  end

  # GET /question_part_twos/1/edit
  def edit
  end

  # POST /question_part_twos
  # POST /question_part_twos.json
  def create
    @question_part_two = QuestionPartTwo.new(question_part_two_params)

    respond_to do |format|
      if @question_part_two.save
        format.html { redirect_to @question_part_two, notice: 'Question part two was successfully created.' }
        format.json { render :show, status: :created, location: @question_part_two }
      else
        format.html { render :new }
        format.json { render json: @question_part_two.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /question_part_twos/1
  # PATCH/PUT /question_part_twos/1.json
  def update
    respond_to do |format|
      if @question_part_two.update(question_part_two_params)
        format.html { redirect_to @question_part_two, notice: 'Question part two was successfully updated.' }
        format.json { render :show, status: :ok, location: @question_part_two }
      else
        format.html { render :edit }
        format.json { render json: @question_part_two.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /question_part_twos/1
  # DELETE /question_part_twos/1.json
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
      params.fetch(:question_part_two, {})
    end
end
