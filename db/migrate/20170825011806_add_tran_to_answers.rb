class AddTranToAnswers < ActiveRecord::Migration[5.1]
  def change
    add_column :answers, :tran, :string
  end
end
