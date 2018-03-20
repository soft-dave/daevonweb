ActiveAdmin.register Testimonial do
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
	permit_params :name, :comment

	index do
		column :name
		column :comment
		
		actions
	end

	form do |f|
		f.inputs "Portfolio Details" do
		  f.input :name
		  f.input :comment	
		end
		  f.actions
	end

	show do 
	  attributes_table do
	    row :name
	    row :comment
	  end
	end
end
