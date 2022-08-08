class CreateAnimeLists < ActiveRecord::Migration[7.0]
  def change
    create_table :anime_lists do |t|
      t.string :anime_id
      t.string :anime_name

      t.timestamps
    end
  end
end
