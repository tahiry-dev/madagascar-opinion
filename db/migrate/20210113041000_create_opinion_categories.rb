class CreateOpinionCategories < ActiveRecord::Migration[6.0]
  def change
    create_table :opinion_categories do |t|
      t.integer :opinion_id
      t.string :category_id

      t.timestamps
    end
  end
end
