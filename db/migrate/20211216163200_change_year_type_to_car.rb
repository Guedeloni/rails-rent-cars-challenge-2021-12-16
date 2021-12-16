class ChangeYearTypeToCar < ActiveRecord::Migration[6.1]
  def change
    remove_column :cars, :year_of_production, :date
  end
end
