ActiveAdmin.register Animal do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

  permit_params :name, :animal_type, :birth_date, :gender, :is_sterilized, :is_vaccined, :description, :is_adopted, :size, :file, media_attributes: [:id, :type, :is_cover, :_destroy]

  form partial: 'form'

end
