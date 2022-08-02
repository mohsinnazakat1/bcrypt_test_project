module Auth 
  
  puts 'module activated'
  require 'bcrypt'

  def self.create_hash_digest(password)
    BCrypt::Password.create(password)
  end

  def self.verify_hash_digest(password)
    BCrypt::Password.new(password)
  end

  def self.create_hash_passwords list_of_users
    list_of_users.each do |user|
      user['password'] = create_hash_digest(user['password'])
    end
    list_of_users  
  end

  def self.authentication username, password, list_of_users
    list_of_users.each do |user|
      if user['username'] == username && user['password'] == password 
        return user
      end
    end
    'user not found'
  end

end 