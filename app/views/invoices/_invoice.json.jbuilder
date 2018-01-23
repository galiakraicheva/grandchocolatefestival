json.extract! invoice, :id, :firm_one_name, :firm_one_vat, :firm_one_eik, :firm_one_address, :firm_one_mol, :firm_two_name, :firm_two_vat, :firm_two_eik, :firm_two_address, :firm_two_mol, :invoice_number, :paid, :created_at, :updated_at
json.url invoice_url(invoice, format: :json)
