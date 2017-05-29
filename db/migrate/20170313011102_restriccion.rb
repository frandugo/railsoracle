class Restriccion < ActiveRecord::Migration[5.0]
  def change
=begin
    change_column_null :departamentos, :nomdep, false
    change_column_null :municipios, :nommun, false
    change_column_null :municipios, :departamento_id, false
    change_column_null :direccions, :direccion, false
    change_column_null :direccions, :municipio_id, false
    change_column_null :documentos, :numdoc, false
    change_column_null :tpdocs, :documento_id, false
    change_column_null :tpdocs, :tipodoc, false
    change_column_null :docentes, :nom1, false
    change_column_null :docentes, :ape1, false
    change_column_null :docentes, :documento_id, false
    change_column_null :profesions, :tarpro, false
    change_column_null :profesions, :nompro, false
    change_column_null :profesions, :docente_id, false
    change_column_null :acudientes, :nom1, false
    change_column_null :acudientes, :ape1, false
    change_column_null :acudientes, :documento_id, false
    change_column_null :estudiantes, :nom1, false
    change_column_null :estudiantes, :ape1, false
    change_column_null :estudiantes, :documento_id, false
    change_column_null :estudiantes, :acudiente_id, false
    change_column_null :posgrados, :nompos, false
    change_column_null :notificacions, :docente_id, false
    change_column_null :grupos, :grupo, false
    change_column_null :grupos, :curso_id, false
    change_column_null :jornadas, :jornada, false
    change_column_null :jornadas, :grupo_id, false
    change_column_null :pensums, :asignatura_id, false
    change_column_null :pensums, :curso_id, false
    change_column_null :pensums, :fechai, false
    change_column_null :pensums, :fechaf, false
    change_column_null :asignaturas, :tpasi_id, false
    change_column_null :asignaturas, :numasi, false
    change_column_null :asignaturas, :nomasi, false
    change_column_null :periodos, :periodo, false
    change_column_null :periodos, :fechai, false
    change_column_null :encnota, :grupo_id, false
    change_column_null :encnota, :curso_id, false
    change_column_null :encnota, :asignatura_id, false
    change_column_null :encnota, :docente_id, false
    change_column_null :encnota, :periodo_id, false
    change_column_null :dtnota, :encnota_id, false
    change_column_null :dtnota, :examen, false
    change_column_null :dtnota, :estudiante_id, false
    add_index :documentos, [:numdoc], :unique => true
    add_index :profesions, [:tarpro], :unique => true
    add_index :posgrados, [:numtitulo], :unique => true
    add_index :asignaturas, [:numasi], :unique => true
=end
  end
end
