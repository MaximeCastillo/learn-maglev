Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  mount Maglev::Engine => '/maglev'
  get '(*path)', to: 'maglev/page_preview#index', defaults: { path: 'index' }, constraints: Maglev::PreviewConstraint.new
end
