class CitizensController < InheritedResources::Base
  
  
def jalar(vadni,vpara)
  require 'json'
  require 'open-uri'
   vruta='https://ww1.essalud.gob.pe/sisep/postulante/postulante/postulante_obtenerDatosPostulante.htm?strDni='+vadni
  

  value0 = JSON.parse(open(vruta).read)
  value1 =value0['DatosPerson'][0]
  Citizen.where(id:vpara).update_all( primer_apellido:value1["ApellidoPaterno"],
          segundo_apellido:value1["ApellidoMaterno"],prenombres:value1["Nombres"],
          nacimiento:value1["FechaNacimiento"].to_date,sexo:value1["Sexo"].to_i)
 puts " "       
 puts "COMIENZA"
 puts value1["ApellidoPaterno"].length   
 puts "TERMINA"       
end#def jalar
end#class