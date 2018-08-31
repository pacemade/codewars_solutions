# Summary
# Given a Hash made up of keys and values, invert the hash by swapping them.
#
# Examples
# Given:
#
#   { 'a' => 1,
#     'b' => 2,
#     'c' => 3 }
#
# Return:
#
#   { 1 => 'a',
#     2 => 'b',
#     3 => 'c' }
#
#
#
# Given:
#
#   { 'foo'   => 'bar',
#     'hello' => 'world' }
#
# Return:
#
#   { 'bar'   => 'foo',
#     'world' => 'hello' }
#
def invert_hash(hash)
 inverted = {}
  hash.each do |k,v|
    inverted[v] = k
    end
    return inverted
end

def invert_hash(hash)
  hash.map(&:reverse).to_h
end
