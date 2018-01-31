class CreateInvoices < ActiveRecord::Migration[5.1]
  def change
    create_table :invoices do |t|
      t.string :firm_name
      t.string :firm_vat
      t.string :firm_eik
      t.string :firm_address
      t.string :firm_mol
      t.string :invoice_number
      t.string :invoice_amount
      t.string :terms
      t.boolean :paid

      t.timestamps
    end

    add_reference :invoices, :entity, foreign_key: true
  end
end
