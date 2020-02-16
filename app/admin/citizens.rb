ActiveAdmin.register Citizen do
 
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :dni, :primer_apellido, :segundo_apellido, :prenombres, :sexo, :estado_civil, :nacimiento, :foto, :sele1, :sele2, :sele3, :sele4
  #
  # or
  #
  # permit_params do
  #   permitted = [:dni, :primer_apellido, :segundo_apellido, :prenombres, :sexo, :estado_civil, :nacimiento, :foto, :sele1, :sele2, :sele3, :sele4]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  menu priority: 2, label: "Ciudadanos"
filter :dni
filter :primer_apellido
filter :segundo_apellido
filter :prenombres



  index :title => 'Lista de Ciudadanos' do
   
   



    column(:dni) 
    column(:primer_apellido) 
    column(:segundo_apellido) 
    column(:prenombres) 
    column("Foto") do   |emple|
      unless emple.foto.blank?
       li   image_tag emple.foto.thumb.url, size: "100"
      end
    end

actions


     actions

 end


form :title => 'Edicion Personal'  do |f|


 f.inputs  do

   f.input :dni, :input_html => { :style =>  'width:30%'}
  # f.input :primer_apellido, :input_html => { :style =>  'width:30%'}
  # f.input :segundo_apellido, :input_html => { :style =>  'width:30%'}
  # f.input :prenombres, :input_html => { :style =>  'width:30%'}
   
   f.input :foto, :as => :file, :hint => f.object.foto.present? \
          ? image_tag(f.object.foto.url(:thumb))
           : content_tag(:span, "no hay foto aun")


   f.input :admin_user_id, :input_html => { :value => current_admin_user.id }, :as => :hidden



   f.actions

 end

end

show :title => ' Personal'  do
  reporte = CitizensController.new
  reporte.jalar( Citizen.find_by_id(params[:id]).dni,params[:id])

       attributes_table  do     
 
       
        
        row :dni
        row "Primer Apellido" do  |emple| 
               Citizen.find_by_id(params[:id]).primer_apellido
         
        end
       
        row "Segundo Apellido" do  |emple| 
          Citizen.find_by_id(params[:id]).segundo_apellido
    
        end
        
        row "Prenombres" do  |emple| 
          Citizen.find_by_id(params[:id]).prenombres
    
        end     
     #   row :foto


       end
     end
            
end
