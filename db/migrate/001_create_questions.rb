class CreateQuestions < ActiveRecord::Migration[5.1]
  def change
    create_table :question_part_ones do |t|
      t.string :en
      t.string :jp
      t.string :zh

      t.timestamps
    end

    create_table :question_part_twos do |t|
      t.string :en
      t.string :jp
      t.string :zh
      
      t.timestamps
    end
  end
end
