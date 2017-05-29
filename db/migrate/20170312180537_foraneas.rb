class Foraneas < ActiveRecord::Migration[5.0]
  def change
    #add_foreign_key :direccions, :municipios, name: :mun_dir_fk
    #add_foreign_key :direccions, :estudiantes, name: :est_dir_fk
    #add_foreign_key :tpdocs, :documentos, name: :doc_tpdocs_fk
    #add_foreign_key :docentes, :documentos, name: :doc_doce_fk
    #add_foreign_key :profesions, :docentes, name: :doce_pro_fk
    #add_foreign_key :notificacions, :docentes, name: :doce_noti_fk
    #add_foreign_key :notificacions, :estudiantes, name: :est_noti_fk
    #add_foreign_key :acudientes, :documentos, name: :doc_acu_fk
    #add_foreign_key :estudiantes, :documentos, name: :doc_est_fk
    #add_foreign_key :estudiantes, :acudientes, name: :acu_est_fk
    #add_foreign_key :estudiantes, :cursos, name: :cur_est_fk
    #add_foreign_key :telefonos, :estudiantes, name: :est_tel_fk
    #add_foreign_key :telefonos, :docentes, name: :doce_tel_fk
    #add_foreign_key :correos, :estudiantes, name: :est_cor_fk
    #add_foreign_key :correos, :docentes, name: :doce_cor_fk
    #add_foreign_key :posgrados, :profesions, name: :pro_pos_fk
    #add_foreign_key :grupos, :cursos, name: :cur_gru_fk
=begin
    add_foreign_key :jornadas, :grupos, name: :gru_jor_fk
    add_foreign_key :pensums, :cursos, name: :cur_pen_fk
    add_foreign_key :pensums, :asignaturas, name: :asi_pen_fk
    add_foreign_key :asignaturas, :tpasis, name: :tpasis_asi_fk
    add_foreign_key :encnota, :grupos, name: :gru_enc_fk
    add_foreign_key :encnota, :cursos, name: :cur_enc_fk
    add_foreign_key :encnota, :asignaturas, name: :asi_enc_fk
    add_foreign_key :encnota, :docentes, name: :doce_enc_fk
    add_foreign_key :encnota, :periodos, name: :per_enc_fk
    add_foreign_key :dtnota, :estudiantes, name: :est_dtn_fk
=end
    #rename_column :dtnota, :encnota_i, :encnota_id
    #add_foreign_key :dtnota, :encnota, name: :dtn_enc_fk
  end
end
