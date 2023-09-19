class CreateJoinTablePermissionsActions < ActiveRecord::Migration[7.0]
  def change
    create_join_table :permissions, :actions do |t|
      t.index [:permission_id, :action_id]
      t.index [:action_id, :permission_id]
    end
  end
end
