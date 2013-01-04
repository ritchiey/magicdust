class CreateContractors < ActiveRecord::Migration
  def change
    create_table :contractors do |t|
      t.string :name
      t.string :preferred_name

      t.timestamps
    end
  end
end
