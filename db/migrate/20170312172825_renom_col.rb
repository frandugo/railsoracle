class RenomCol < ActiveRecord::Migration[5.0]
  def change
    rename_column :direccions, :idmun, :municipio_id
    rename_column :direccions, :idnom, :estudiante_id
    rename_column :tpdocs, :iddoc, :documento_id
    rename_column :docentes, :iddoc, :documento_id
    rename_column :profesions, :iddoce, :docente_id
    rename_column :notificacions, :iddoce, :docente_id
    rename_column :notificacions, :idnom, :estudiante_id
    rename_column :acudientes, :iddoc, :documento_id
    rename_column :estudiantes, :iddoc, :documento_id
    rename_column :estudiantes, :idac, :acudiente_id
    rename_column :estudiantes, :idcu, :curso_id
    rename_column :telefonos, :idnom, :estudiante_id
    rename_column :telefonos, :iddoce, :docente_id
    rename_column :correos, :idnom, :estudiante_id
    rename_column :correos, :iddoce, :docente_id
    rename_column :posgrados, :idpro, :profesion_id
    rename_column :grupos, :idcu, :curso_id
    rename_column :jornadas, :idgru, :grupo_id
    rename_column :pensums, :idasi, :asignatura_id
    rename_column :pensums, :idcu, :curso_id
    rename_column :asignaturas, :idtpasi, :tpasi_id
    rename_column :encnota, :idgru, :grupo_id
    rename_column :encnota, :idcu, :curso_id
    rename_column :encnota, :idasi, :asignatura_id
    rename_column :encnota, :iddoce, :docente_id
    rename_column :encnota, :idpe, :periodo_id
    rename_column :dtnota, :idnom, :estudiante_id
    rename_column :dtnota, :idencnotas, :encnota_id
    #rename_column :dtnota, :encnota_id, :
  end
end
