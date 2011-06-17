class CreateTasks < ActiveRecord::Migration
  def self.up
    create_table :tasks do |t|
      t.string :title
      t.datetime :deadline
      t.references :assignee
      t.references :creator
      t.timestamps
    end
  end

  def self.down
    drop_table :tasks
  end
end
