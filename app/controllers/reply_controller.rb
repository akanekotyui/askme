class ReplyController < ApplicationController
  def reply_index
    @q1 = QuestionPartOne.find(params[:q1_id])
    @q2 = QuestionPartTwo.find(params[:q2_id])
    answer_code = (@q1.code.to_s + @q2.code.to_s + @q2.a_code.to_s).to_i
    @a = Answer.where(code: answer_code).first
    if @la == "zh"
      render "reply_index_zh"
    end
  end
end
