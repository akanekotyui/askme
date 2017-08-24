class ReplyController < ApplicationController
  def reply_index
    #質問文からq2_codeとcodeをとってくる
    q1 = QuestionPartOne.where(id: param[q1_id])
    q2 = QuestionPartTwo.where(id: param[q2_id])

    #
  end

end
