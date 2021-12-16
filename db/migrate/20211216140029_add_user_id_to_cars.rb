class AddUserIdToCars < ActiveRecord::Migration[6.1]
  def change
    add_column :cars do |t|
      t.references :user, null: false, foreign_key: true
    end
  end
end
