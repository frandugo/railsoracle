Rails.application.routes.draw do
  get 'home/index'

  resources :nota
  resources :documentos
  resources :usuarios
  resources :dtnota
  resources :encnota
  resources :periodos
  resources :asignaturas
  resources :tpasis
  resources :pensums
  resources :jornadas
  resources :grupos
  resources :cursos
  resources :posgrados
  resources :correos
  resources :telefonos
  resources :estudiantes
  resources :acudientes
  resources :notificacions
  resources :profesions
  resources :docentes
  resources :tpdocs
  resources :direccions
  resources :municipios
  resources :departamentos

  resources :usuarios do
    collection do
     get 'get_info_from_oracle'
    end
  end

  root 'home#index'
# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
