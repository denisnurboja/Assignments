Rails.application.routes.draw do
  root 'posts#index'
  get 'about' => 'welcome#about'
  get 'post1' => 'posts#post1'
  get 'post2' => 'posts#post2'
  get 'post3' => 'posts#post3'
  get 'post4' => 'posts#post4'
end
