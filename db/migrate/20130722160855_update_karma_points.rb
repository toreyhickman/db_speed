class UpdateKarmaPoints < ActiveRecord::Migration
  def up
    add_index(:karma_points, [:user_id, :value])
    add_column :users, :karma_count, :integer, default:0
  end

  def down
    remove_index(:karma_points, [:user_id, :value])
    remove_column :users, :karma_count
  end
end
