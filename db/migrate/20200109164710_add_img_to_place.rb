class AddImgToPlace < ActiveRecord::Migration[6.0]
  def change
    add_column :places, :img, :string
  end
end
