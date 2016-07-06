class User

  # {
  #   id: "UQzgoFLBfdnHR8CK",
  #   name: "Riyaz Bro",
  #   about: "Sample Description",
  #   dob: "1992-08-09",
  #   email: "mohammedriyaz.mdr@gmail.com",
  #   phone: "9967829993",
  #   password_digest: ""
  #   city: "BH0XXPpSVxpmkN5R",
  #   created_at: "1467793011"
  #   locality: "yEpzX9Yhk8WTK6ZS"
  # }

  has_secure_password
  
  include Mongoid::Document
  field :id, type: String
  field :name, type: String
  field :about, type: String
  field :dob, type: String
  field :email, type: String
  field :phone, type: String
  field :password_digest, type: String
  field :city, type: String
  field :locality, type: String
  field :created_at, type: Date


end
