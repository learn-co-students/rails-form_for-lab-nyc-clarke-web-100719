Rails.application.routes.draw do
  resources :school_classes
  resources :students

  get 'students/new', to: 'students#new', as: :new_student_path 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
