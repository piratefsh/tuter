class CreateTutorIds < ActiveRecord::Migration
  def change
    create_table :tutor_ids do |t|

     t.timestamps
    end
  end
end
