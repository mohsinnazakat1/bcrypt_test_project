require 'bcrypt'

# my_password = BCrypt::Password.create("my password")
# #=> "$2a$12$K0ByB.6YI2/OYrB4fQOYLe6Tv0datUVf6VZ/2Jzwm879BW5K1cHey"

# puts my_password.version              #=> "2a"
# puts my_password.cost                 #=> 12
# puts my_password
# puts my_password == "my password"     #=> true
# puts my_password == "not my password" #=> false
# puts my_password

users = [
    {'username' => 'mohsin', 'password' => 'abc123a'},
    {'username' =>  'nomi', 'password' =>'abc123c'},
    {'username' =>  'ghazi', 'password' =>'abc123d'},
    {'username' =>  'haseeb', 'password' =>'abc123e'},
    {'username' =>  'mashoor', 'password' =>'abc123f'},
]


my_password = BCrypt::Password.new("$2a$12$NTNLTVHzC3.YywWu61Kx8uSGEApav8kIozoLuB0GNm.OX5WltmQqS")
# puts my_password.class
# puts my_password
# puts my_password == "my password"     #=> true
# puts my_password == "not my password" #=> false
# puts my_password

def create_hash_digest(password)
  BCrypt::Password.create(password)
end

def verify_hash_digest(password)
  BCrypt::Password.new(password)
end



def create_hash_passwords list_of_users
  list_of_users.each do |user|
    user['password'] = create_hash_digest(user['password'])
  end
  list_of_users  
end

def authentication username, password, list_of_users
  list_of_users.each do |user|
    if user['username'] == username && user['password'] == password 
      return user
    end
  end
  'user not found'
end


hashed_user_list = create_hash_passwords users
# puts hashed_user_list
puts authentication 'mohsin','abc123b', hashed_user_list