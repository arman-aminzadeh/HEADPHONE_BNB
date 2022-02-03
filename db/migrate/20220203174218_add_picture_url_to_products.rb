class AddPictureUrlToProducts < ActiveRecord::Migration[6.1]
  def change
    add_column :products, :picture_url, :string
  end
end
