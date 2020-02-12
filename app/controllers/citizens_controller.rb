class CitizensController < InheritedResources::Base

  private

    def citizen_params
      params.require(:citizen).permit(:dni, :primer_apellido, :segundo_apellido, :prenombres, :sexo, :estado_civil, :nacimiento, :foto, :sele1, :sele2, :sele3, :sele4)
    end

end
