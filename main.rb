$SET_PATH = '.'
require 'bcrypt'

users = [
    {'username' => 'mohsin', 'password' => 'abc123a'},
    {'username' =>  'nomi', 'password' =>'abc123c'},
    {'username' =>  'ghazi', 'password' =>'abc123d'},
    {'username' =>  'haseeb', 'password' =>'abc123e'},
    {'username' =>  'mashoor', 'password' =>'abc123f'},
]


hashed_user_list = create_hash_passwords users
# puts hashed_user_list
puts authentication 'mohsin','abc123b', hashed_user_list