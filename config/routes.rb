Rails.application.routes.draw do
  resources :absences
  get 'absences/cours/:idCours', to: 'absences#getByCours'
  resources :students
  get 'students/classe/:idClasse', to: 'students#getStudentsByClasse'  
  get 'students/name/:studentName', to: 'students#searchByName'  
  
  resources :cours
  get 'cours/classe/:idClasse', to: 'cours#getByClass'
  resources :classes
  resources :users do
    collection do
      post 'login'
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
