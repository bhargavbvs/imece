class User < MongoModel
  # {
  #   uuid: "UQzgoFLBfdnHR8CK",
  #   name: "Riyaz Bro",
  #   about: "Sample Description",
  #   dob: "1992-08-09",
  #   email: "mohammedriyaz.mdr@gmail.com",
  #   phone: "9967829993",
  #   password: "123456",
  #   password_confirmation: "123456",
  #   city: "BH0XXPpSVxpmkN5R",
  #   created_at: 1467793011,
  #   locality: "yEpzX9Yhk8WTK6ZS"
  # }
  include ActiveModel::SecurePassword
  field :uuid, type: String
  field :name, type: String
  field :about, type: String
  field :dob, type: String
  field :email, type: String
  field :phone, type: String
  field :password_digest, type: String
  field :city, type: String
  field :locality, type: String
  field :created_at, type: Date

  has_secure_password


end
