ActiveAdmin.register Technology do
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
	permit_params :title, :photo

	index do
		column :title
		actions
	end

	form do |f|
		f.inputs "Technology Details" do
		  f.input :title
		  f.file_field :photo
		end
		  f.actions
	end

	show do 
	  attributes_table do
	    row :title
	    row :photo do
	     	image_tag technology.photo.url(:medium)
			end
	  end
	end
end
