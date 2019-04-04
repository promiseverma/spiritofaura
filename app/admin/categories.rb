ActiveAdmin.register Category do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :name, :title, :description
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end


	form do |f|
    f.inputs 'Category' do
      f.input :name
      f.input :title
      f.input :description
    	f.actions
    end
  end

  member_action :image, method: :post do
    resource.image!
    redirect_to resource_path, notice: "Locked!"
  end

  action_item :image do
  	link_to 'Add Image', image_admin_category_path()
	end

end
