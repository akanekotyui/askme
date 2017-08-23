class CreateQuestions < ActiveRecord::Migration[5.1]
  def change
    create_table :question_part_ones do |t|
      t.string  :en
      t.string  :jp
      t.string  :zh
      t.integer :q2_code
      t.string  :remark

      t.timestamps
    end

    create_table :question_part_twos do |t|
      t.integer :code
      t.string  :en
      t.string  :jp
      t.string  :zh
      t.integer :a_code
      t.string  :remark
      
      t.timestamps
    end
  end
end
