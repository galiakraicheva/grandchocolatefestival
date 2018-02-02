ActiveAdmin.register Entity do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters

  permit_params :common_name, :website, :fb_page, :description,
                :progress, :is_participant, :is_sponsor, :is_media, :is_partner, :comments, :country, :user_id,
                contacts_attributes: [:person_name, :person_phone, :person_email, :person_position, :_destroy]

end
