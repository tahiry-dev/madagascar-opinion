class CreateOpinion < ActiveRecord::Migration[6.0]
  def change
    create_table :opinions do |t|
      t.string :text
      t.integer :author_id

      t.timestamps
    end
  end
end
