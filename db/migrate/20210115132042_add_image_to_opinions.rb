class AddImageToOpinions < ActiveRecord::Migration[6.0]
  def change
    add_column :opinions, :image, :string
  end
end
