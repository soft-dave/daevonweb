ActiveAdmin.register Portfolio do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :title, :description, :cover_photo
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end
	permit_params :title, :description, :url, :cover_photo, technology_ids: []

	index do
		column :title
		column :url
		column :description
		column "Technologies" do |p|
			p.technologies.map(&:title).join(", ")
		end
		actions
	end

	form do |f|
		f.inputs "Portfolio Details" do
		  f.input :title
		  f.input :url	
		  f.input :description
		  f.file_field :cover_photo
		end

		f.inputs do
			f.input :technologies, as: :select, :input_html => {:multiple => true}, collection: Technology.all.collect {|t| [t.title, t.id]}
		end
  	f.actions
	end

	show do 
	  attributes_table do
	    row :title
	    row :url
	    row :description
	    row :cover_photo do
	     	image_tag portfolio.cover_photo.url(:medium)
			end
			row "Technologies" do |p|
				p.technologies.map(&:title).join(", ")
			end
	  end
	end

end
