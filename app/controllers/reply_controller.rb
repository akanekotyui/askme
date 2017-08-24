class ReplyController < ApplicationController
  def reply_index
    @q1 = QuestionPartOne.where(id: params[:q1_id])
    @q2 = QuestionPartTwo.where(id: params[:q2_id])
  end
end
