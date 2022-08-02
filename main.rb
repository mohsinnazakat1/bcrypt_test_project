require_relative 'bcrypt'


users = [
    {'username' => 'mohsin', 'password' => 'abc123a'},
    {'username' =>  'nomi', 'password' =>'abc123c'},
    {'username' =>  'ghazi', 'password' =>'abc123d'},
    {'username' =>  'haseeb', 'password' =>'abc123e'},
    {'username' =>  'mashoor', 'password' =>'abc123f'},
]

hashed_user_list = Auth.create_hash_passwords users
# puts hashed_user_list
puts Auth.authentication 'mohsin','abc123a', hashed_user_list