class ScoreLevelId < ActiveRecord::Migration[6.0]
  def change
    add_column :scores, :level_id, :integer
  end
end
