class QuestionPartOnesController < ApplicationController
  before_action :set_question_part_one, only: [:show, :edit, :update, :destroy]

  # GET /question_part_ones
  # GET /question_part_ones.json
  def index
    @question_part_ones = QuestionPartOne.all
  end

  # GET /question_part_ones/1
  # GET /question_part_ones/1.json
  def show
  end

  # GET /question_part_ones/new
  def new
    @question_part_one = QuestionPartOne.new
  end

  # GET /question_part_ones/1/edit
  def edit
  end

  # POST /question_part_ones
  # POST /question_part_ones.json
  def create
    @question_part_one = QuestionPartOne.new(question_part_one_params)

    respond_to do |format|
      if @question_part_one.save
        format.html { redirect_to @question_part_one, notice: 'Question part one was successfully created.' }
        format.json { render :show, status: :created, location: @question_part_one }
      else
        format.html { render :new }
        format.json { render json: @question_part_one.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /question_part_ones/1
  # PATCH/PUT /question_part_ones/1.json
  def update
    respond_to do |format|
      if @question_part_one.update(question_part_one_params)
        format.html { redirect_to @question_part_one, notice: 'Question part one was successfully updated.' }
        format.json { render :show, status: :ok, location: @question_part_one }
      else
        format.html { render :edit }
        format.json { render json: @question_part_one.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /question_part_ones/1
  # DELETE /question_part_ones/1.json
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
      params.fetch(:question_part_one, {})
    end
end
