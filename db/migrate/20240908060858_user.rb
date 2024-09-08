class User < ActiveRecord::Migration[7.2]
  def change
    create_table :users do |t|
      t.string :username
    end
  end
end
