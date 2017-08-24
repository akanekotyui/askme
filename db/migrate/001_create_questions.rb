class CreateQuestions < ActiveRecord::Migration[5.1]
  def change
    create_table :question_part_ones do |t|
      t.string  :en
      t.string  :jp
      t.string  :zh
      t.integer :q2_code #how toなら1
      t.string  :remark

      t.timestamps
    end

    create_table :question_part_twos do |t|
      t.integer :code #how to なら1, Q1のq2_codeと一緒
      t.string  :en
      t.string  :jp
      t.string  :zh
      t.integer :a_code #答え方
      t.string  :remark

      t.timestamps
    end
  end
end
