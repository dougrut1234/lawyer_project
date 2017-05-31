ActiveAdmin.register Lawyer do
# See permitted parameters documentation:
#  form :html => { :enctype => "multipart/form-data" } do |f|

# permit_params :list, :of, :attributes, :on, :model

# or
# permit_params #   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

 form :html => { :multipart => true } do |f|
    f.inputs "Upload" do
      f.input :avatar, :type => :file
    end
    f.actions
  end


permit_params :first_name, :last_name, :name_of_firm, :avatar
end
