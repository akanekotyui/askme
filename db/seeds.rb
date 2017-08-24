# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
QuestionPartOne.create(:en => 'Which bus', :jp => 'どのバスに', :zh => '哪辆巴士' :q2_code => 1, :remark => 'should I take to')
QuestionPartOne.create(:en => 'Which railway', :jp => 'どのバス', :zh => '其中列车' :q2_code => 1, :remark => 'should I take to')
QuestionPartOne.create(:en => 'Where', :jp => 'どこ', :zh => '哪里' :q2_code => 1, :remark => 'is')
QuestionPartOne.create(:en => 'Please help me', :jp => '助けてください', :zh => '请帮帮我' :q2_code => 5, :remark => '')
QuestionPartOne.create(:en => 'I\'m in trouble', :jp => '困ってます', :zh => '我有麻烦了' :q2_code => 6, :remark => '')
QuestionPartOne.create(:en => 'Is ninja', :jp => '忍者は', :zh => '忍者' :q2_code => 3, :remark => '')