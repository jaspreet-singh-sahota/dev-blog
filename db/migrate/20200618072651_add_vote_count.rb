class AddVoteCount < ActiveRecord::Migration[6.0]
  def change
    add_column :articles, :votes_count, :integer, null: false, default: 0      
  end
end
