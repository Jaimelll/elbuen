  ActiveAdmin.register AdminUser do
    permit_params :email, :password, :password_confirmation, :categoria, :periodo
  
  
  menu false
  
  #actions :all
  
    index  do
      cat=0
      if current_admin_user.categoria==cat then
      selectable_column
      id_column
      column :email
      column :current_sign_in_at
      column :sign_in_count
      column :created_at
      column :categoria
     
  
      actions
  
    end
  end
  
    filter :email
    filter :categoria
  
    form do |f|
      f.inputs "Admin Details" do
        f.input :email
        f.input :password
        f.input :password_confirmation
          cat=0
        if current_admin_user.categoria==cat then
           f.input :categoria
          
        end
         f.actions
    end
  
  end
  
  show :title => ' Usuario'  do
  
      attributes_table  do
  
  
  
  
  
        row :email
        row :password
        row :password_confirmation
        cat=0
        if current_admin_user.categoria==cat then
        row :categoria
       
        end
  
    end #de attributes_table
  
  end # de show
  
  
  
  
  
  end
  