    Rails.application.routes.draw do

    # root 'authors#index'
      resources :authors do
        resources :posts, shallow: true 
      end

      resources :tags

#                Prefix Verb   URI Pattern                             Controller#Action
#    author_posts GET    /authors/:author_id/posts(.:format)     posts#index
#                 POST   /authors/:author_id/posts(.:format)     posts#create
# new_author_post GET    /authors/:author_id/posts/new(.:format) posts#new
#       edit_post GET    /posts/:id/edit(.:format)               posts#edit
#            post GET    /posts/:id(.:format)                    posts#show
#                 PATCH  /posts/:id(.:format)                    posts#update
#                 PUT    /posts/:id(.:format)                    posts#update
#                 DELETE /posts/:id(.:format)                    posts#destroy
#         authors GET    /authors(.:format)                      authors#index
#                 POST   /authors(.:format)                      authors#create
#      new_author GET    /authors/new(.:format)                  authors#new
#     edit_author GET    /authors/:id/edit(.:format)             authors#edit
#          author GET    /authors/:id(.:format)                  authors#show
#                 PATCH  /authors/:id(.:format)                  authors#update
#                 PUT    /authors/:id(.:format)                  authors#update
#                 DELETE /authors/:id(.:format)                  authors#destroy
#            tags GET    /tags(.:format)                         tags#index
#                 POST   /tags(.:format)                         tags#create
#         new_tag GET    /tags/new(.:format)                     tags#new
#        edit_tag GET    /tags/:id/edit(.:format)                tags#edit
#             tag GET    /tags/:id(.:format)                     tags#show
#                 PATCH  /tags/:id(.:format)                     tags#update
#                 PUT    /tags/:id(.:format)                     tags#update
#                 DELETE /tags/:id(.:format)                     tags#destroy
  
end
