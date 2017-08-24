class AddTypeToQuestionPartOnes < ActiveRecord::Migration[5.1]
  def change
    add_column :question_part_ones, :type, :string
  end
end
