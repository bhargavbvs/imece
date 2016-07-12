namespace :mongodb do
  desc "Create Indices"
  task :create_indices  => :environment do
    require 'mongo'
    db = Mongo::Client.new("mongodb://#{Mongo_hosts}/#{Mongo_database}/").database
  end
end
