class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :mail_address
      t.string :password_digest
      t.string :name
      t.string :address

      t.timestamps
    end
  end
end
