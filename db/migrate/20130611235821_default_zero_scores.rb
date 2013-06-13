class DefaultZeroScores < ActiveRecord::Migration
  def up
    change_column :scores, :score, :integer, :default => 0
  end

  def down
    change_column :scores, :score, :integer, :default => nil
  end
end
