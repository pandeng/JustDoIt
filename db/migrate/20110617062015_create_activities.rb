class CreateActivities < ActiveRecord::Migration
  def self.up
    create_table :activities do |t|
      t.string :content
      t.references :collaborator
      t.references :task
      t.timestamps
    end
  end

  def self.down
    drop_table :activities
  end
end
