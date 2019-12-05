class AddTrainerInfoToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :trainer, :string # add Trainer name colum to Users table
    add_index :users, :trainer, unique: true # index trainer, then make sure name is unique

    add_column :users, :pos, :integer, default: 0 # positive ratings
    add_column :users, :neg, :integer, default: 0 # negative rating
  end
end
