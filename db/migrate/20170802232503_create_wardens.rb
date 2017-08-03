class CreateWardens < ActiveRecord::Migration[5.0]
  def change
    create_table :wardens do |t|
      t.string :role
      t.binary :acknowledged
      t.integer :office_id
      t.integer :staff_member_id

      t.timestamps

    end
  end
end
