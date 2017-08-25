class AskController < ApplicationController
  def index
    @q1 = QuestionPartOne.find(params[:q1_id])
    @q2s = QuestionPartTwo.where(code: @q1.q2_code)
    if @la == "zh"
      render "index_zh"
    end
  end
end
