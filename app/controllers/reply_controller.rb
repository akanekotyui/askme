class ReplyController < ApplicationController
  def reply_index
#firstはDBの一番上のデータをもってくるメソッド
#入力からparamで値を渡す
@reply = QuestionPartOne.first.en + QuestionPartOne.first.remark + QuestionPartTwo.first.en
@answer = Answer.first.jp

  end

end
