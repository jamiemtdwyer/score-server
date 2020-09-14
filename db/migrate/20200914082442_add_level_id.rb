class AddLevelId < ActiveRecord::Migration[6.0]
  def change
    add_column :scores, :levelId, :integer
  end
end
