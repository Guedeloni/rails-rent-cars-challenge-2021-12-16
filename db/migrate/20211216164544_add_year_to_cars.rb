class AddYearToCars < ActiveRecord::Migration[6.1]
  def change
    add_column :cars, :year_of_production, :integer
  end
end
