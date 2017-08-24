class AddTabTypeToQuestionPartOnes < ActiveRecord::Migration[5.1]
  def change
    add_column :question_part_ones, :tab_type, :string
  end
end
