BlockBrowser::Application.routes.draw do

  match 'upload' => 'blocks#upload'
  match 'blocks' => 'blocks#index', :as => :blocks
  match 'block/:id' => 'blocks#block', :as => :block
  match 'tx/:id' => 'blocks#tx', :as => :tx
  match 'script/:id' => 'blocks#script', :as => :script
  match 'address/:id' => 'blocks#address', :as => :address
  match 'search/:search' => 'blocks#search', :as => :search
  match 'search' => 'blocks#search', :as => :search
  match 'unconfirmed' => 'blocks#unconfirmed', :as => :unconfirmed
  match 'names' => 'blocks#names', :as => :names
  match 'name/*name' => 'blocks#name', :as => :name, :constraints => /.*/

  match 'relay_tx' => 'blocks#relay_tx', :as => :relay_tx

  match 'about' => 'blocks#about', :as => :about
  match 'source' => 'blocks#source', :as => :source
  root :to => 'blocks#index'

end
