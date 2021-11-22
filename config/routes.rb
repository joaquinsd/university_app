Rails.application.routes.draw do
  root 'courses#index'
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  get 'courses/new', to: 'courses#new'
  get 'about', to: 'pages#about'
  post 'course_enroll', to: 'student_courses#create'

  resources :students, except: [:destroy]
end
