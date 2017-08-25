class CreateWords < ActiveRecord::Migration[5.1]
  def change
    create_table :words do |t|
      t.string :en
      t.string :jp
      t.string :zh

      t.timestamps
    end
  end
end
