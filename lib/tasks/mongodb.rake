namespace :mongodb do
  desc "Create Indices"
  task :create_indices  => :environment do
    require 'mongo'
    db = Mongo::Client.new("mongodb://#{Mongo_hosts}/#{Mongo_database}/")
    #, :database => Mongo_database
    binding.pry
    db.createCollection(Mongo_users_collection, {})
    db.createCollection(Mongo_localities_collectoin, {})
    db.createCollection(Mongo_posts_collection, {})
    db.createCollection(Mongo_comments_collection, {})
    db.createCollection(Mongo_cities_collection, {})
  end
end
