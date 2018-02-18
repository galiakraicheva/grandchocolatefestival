ActiveAdmin.register Entity do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters


  permit_params :common_name, :website, :fb_page, :description,
                :progress, :is_participant, :is_sponsor, :is_media, :is_partner, :comments, :country, :user_id,
                contacts_attributes: [:person_name, :person_phone, :person_email, :person_position, :_destroy]

  index do
    selectable_column
    id_column
    column :common_name
    column :website
    column :fb_page
    column :description
    column :progress
    column do |entity|
      attributes_table_for entity.contacts do
        row :person_name
        row :person_phone
        row :person_email
        row :person_position
      end
    end
    column :person_name
    column :person_phone
    column :person_email
    column :person_position
    column :country
    column :user_id
    actions
  end

end
