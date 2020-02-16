class CitizensController < InheritedResources::Base
  
  
def jalar(vadni,vpara)
  require 'json'
  require 'open-uri'
   vruta='https://ww1.essalud.gob.pe/sisep/postulante/postulante/postulante_obtenerDatosPostulante.htm?strDni='+vadni
  

  value0 = JSON.parse(open(vruta).read)
  value1 =value0['DatosPerson'][0]
  Citizen.where(id:vpara).update_all( primer_apellido:value1["ApellidoPaterno"],
          segundo_apellido:value1["ApellidoMaterno"],prenombres:value1["Nombres"])
  
end#def jalar
end#class