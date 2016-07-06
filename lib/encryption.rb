module Encryption

  def self.get_id n=12
    n = (n < 10) ? 10 : n
    while (true) do
      string = SecureRandom.urlsafe_base64(n)
      next if (string.include? '-') || (string.include? '_')
      break
    end
    return string
  end

  def self.get_hex n=12
    n = (n < 10) ? 10 : n
    return SecureRandom.hex(n)
  end

  def self.get_token
    return SecureRandom.urlsafe_base64(64)
  end

  def self.get_long_token
    return SecureRandom.urlsafe_base64(128)
  end
end
