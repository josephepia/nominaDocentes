class CreateJoinTableActionsResources < ActiveRecord::Migration[7.0]
  def change
    create_join_table :actions, :resources do |t|
      t.index [:action_id, :resource_id]
      t.index [:resource_id, :action_id]
    end
  end
end
