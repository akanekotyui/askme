class ReplyController < ApplicationController
  def reply_index
    #これは文字列直打ち
  #  @reply = 'how to get to' + 'Kinkakuji-temple'
  #  @answer = '*goto行きの	（～系統）で乗って、（～方面）へ行き、（降りるべき駅）で降りてください。'

#@reply = QuestionPartOne.human_attribute_name(:en) + QuestionPartTwo.human_attribute_name(:en)
@reply = QuestionPartOne.all

  end

end
