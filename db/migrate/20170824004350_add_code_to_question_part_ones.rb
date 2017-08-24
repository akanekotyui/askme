class AddCodeToQuestionPartOnes < ActiveRecord::Migration[5.1]
  def change
    add_column :question_part_ones, :code, :integer
  end
end
