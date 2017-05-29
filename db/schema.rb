# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20170526023521) do

  create_table "acudientes", force: :cascade do |t|
    t.string   "nom1"
    t.string   "nom2"
    t.string   "ape1"
    t.string   "ape2"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.string   "numdoc",        limit: 10
    t.string   "tipodoc",       limit: 2
    t.string   "estudiante_id"
  end

  create_table "asignaturas", force: :cascade do |t|
    t.string   "nomasi"
    t.string   "numasi"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "correos", force: :cascade do |t|
    t.string   "correo"
    t.integer  "estudiante_id"
    t.integer  "docente_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "cursos", force: :cascade do |t|
    t.string   "curso"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "departamentos", force: :cascade do |t|
    t.string   "nomdep"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "direccions", force: :cascade do |t|
    t.string   "direccion"
    t.integer  "municipio_id"
    t.integer  "estudiante_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "docentes", force: :cascade do |t|
    t.string   "nom1"
    t.string   "nom2"
    t.string   "ape1"
    t.string   "ape2"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.string   "numdoc",     limit: 10
    t.string   "tipodoc",    limit: 2
    t.string   "correo"
    t.string   "telefono"
    t.string   "tarpro"
    t.string   "nompro"
  end

  create_table "documentos", force: :cascade do |t|
    t.string   "tipodoc"
    t.decimal  "numdoc"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.string   "estudiante_id"
    t.string   "acudiente_id"
    t.string   "docente_id"
  end

  create_table "dtnota", force: :cascade do |t|
    t.integer  "estudiante_id"
    t.integer  "taller"
    t.integer  "quiz"
    t.integer  "examen"
    t.integer  "seguimiento"
    t.integer  "encnota_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "encnota", force: :cascade do |t|
    t.integer  "grupo_id"
    t.integer  "curso_id"
    t.integer  "asignatura_id"
    t.integer  "docente_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "estudiantes", force: :cascade do |t|
    t.string   "nom1"
    t.string   "nom2"
    t.string   "ape1"
    t.string   "ape2"
    t.integer  "acudiente_id"
    t.integer  "curso_id"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.string   "numdoc",       limit: 10
    t.string   "tipodoc",      limit: 2
    t.string   "grupo_id",     limit: 6
  end

  create_table "grupos", force: :cascade do |t|
    t.string   "grupo"
    t.integer  "curso_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "municipios", force: :cascade do |t|
    t.string   "nommun"
    t.integer  "departamento_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "nota", force: :cascade do |t|
    t.decimal  "nota1"
    t.decimal  "nota2"
    t.decimal  "nota3"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.decimal  "nota4"
    t.integer  "estudiante_id", limit: 6
    t.integer  "grupo_id",      limit: 6
    t.integer  "curso_id",      limit: 6
    t.integer  "asignatura_id", limit: 6
    t.integer  "docente_id",    limit: 6
  end

  create_table "notificacions", force: :cascade do |t|
    t.text     "notificacion"
    t.integer  "docente_id"
    t.integer  "estudiante_id"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.string   "grupo_id",      limit: 6
  end

  create_table "pensums", force: :cascade do |t|
    t.integer  "asignatura_id"
    t.integer  "curso_id"
    t.date     "fechai"
    t.date     "fechaf"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "periodos", force: :cascade do |t|
    t.string   "periodo"
    t.date     "fechai"
    t.date     "fechaf"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "posgrados", force: :cascade do |t|
    t.string   "nompos"
    t.string   "numtitulo"
    t.integer  "profesion_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "profesions", force: :cascade do |t|
    t.string   "tarpro"
    t.string   "nompro"
    t.integer  "docente_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "telefonos", force: :cascade do |t|
    t.string   "telefono"
    t.integer  "estudiante_id"
    t.integer  "docente_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "tpdocs", force: :cascade do |t|
    t.string   "tipodoc"
    t.integer  "documento_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

end
