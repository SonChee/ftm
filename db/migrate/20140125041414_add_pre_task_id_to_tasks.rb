class AddPreTaskIdToTasks < ActiveRecord::Migration
  def change
    add_column :tasks, :pre_task_id, :int
  end
end
