class CreateApikeys < ActiveRecord::Migration[7.1]
  def change
    create_table :apikeys do |t|
      t.string :apikey
      t.string :provider

      t.timestamps
    end
  end
end
