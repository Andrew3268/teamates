ActiveAdmin.register User do

  index do
    selectable_column
    id_column
    column :email
    column :name
    column :status
    column :details
    column :profile do |user|
      if user.profile.attached?
        image_tag url_for(user.profile), class: "small_image"
      end
    end
    actions
  end

  filter :name
  filter :email

  scope :all, default: true
  scope :no_status_status
  scope :job_searching_status
  scope :job_offering_status
  scope :on_working_status


  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :email, :encrypted_password, :reset_password_token, :reset_password_sent_at, :remember_created_at, :name, :profile, :status
  #
  # or
  #
  # permit_params do
  #   permitted = [:email, :encrypted_password, :reset_password_token, :reset_password_sent_at, :remember_created_at, :name, :profile, :status]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
