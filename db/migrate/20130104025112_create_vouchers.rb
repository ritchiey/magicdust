class CreateVouchers < ActiveRecord::Migration
  def change
    create_table :vouchers do |t|
      t.references :job
      t.references :claimant
      t.string :code

      t.timestamps
    end
    add_index :vouchers, :job_id
    add_index :vouchers, :claimant_id
  end
end
