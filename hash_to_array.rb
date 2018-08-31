# Convert a hash into an array. Nothing more, Nothing less.
#
# {name: 'Jeremy', age: 24, role: 'Software Engineer'}
# should be converted into
#
# [["name", "Jeremy"], ["age", 24], ["role", "Software Engineer"]]

def convert_hash_to_array(hash)
  array = []
  hash.each do | k, v |
    array.push([k.to_s,v])
  end
  return array
end

def convert_hash_to_array(hash)
  hash.map{ |k, v| [k.to_s, v] }
end
