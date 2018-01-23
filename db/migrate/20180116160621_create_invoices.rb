class CreateInvoices < ActiveRecord::Migration[5.1]
  def change
    create_table :invoices do |t|
      t.string :firm_one_name
      t.string :firm_one_vat
      t.string :firm_one_eik
      t.string :firm_one_address
      t.string :firm_one_mol
      t.string :firm_two_name
      t.string :firm_two_vat
      t.string :firm_two_eik
      t.string :firm_two_address
      t.string :firm_two_mol
      t.string :invoice_number
      t.string :invoice_amount
      t.string :terms
      t.boolean :paid

      t.timestamps
    end

    add_reference :invoices, :entity, foreign_key: true
  end
end
