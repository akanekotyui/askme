class CreateAnswers < ActiveRecord::Migration[5.1]
  def change
    create_table :answers do |t|
      t.integer :code
      t.string :en
      t.string :jp
      t.string :zh

      t.timestamps
    end
  end
end
