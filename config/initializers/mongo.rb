Mongo_env = 'development'

Mongo_users_collection = "users"
Mongo_localities_collection = "localities"
Mongo_posts_collection = "posts"
Mongo_comments_collection = "comments"
Mongo_cities_collection = "cities"

Mongo_config = YAML.load_file("config/mongoid.yml").stringify_keys
Mongo_database = Mongo_config[Mongo_env]["clients"]["default"]["database"]
Mongo_hosts = Mongo_config[Mongo_env]["clients"]["default"]["hosts"][0]
Mongo_options = Mongo_config[Mongo_env]["clients"]["default"]["options"]