# LRU Cache
# Key-value store -- like a hash
# Basic operations are get and set (or whatever you want to call them)
# Set takes a key and value
# Get takes a key and returns the value that was previously set
# When initialized the LRU cache has a maximum size.
# When you add a key/value that would exceed the maximum size of the cache, it evicts a kv
# It removes the kv that was "least recently used."  Used is either get or set
require 'byebug'
class LRUCache

  def initialize(size)
    @store_hash = {}
    @hash_size = size
  end
  
  def get(key)
    val = @store_hash.delete(key)
    if val
      @store_hash[key] = val
    else
      -1
    end
  end
  
  def put(key, value)
    @store_hash.delete(key)
    @store_hash[key] = value

    if @store_hash.size > @hash_size
      @store_hash.delete(@store_hash.first.first)
    end
  end

  def evict_key
    @store_hash.delete(@store_hash.first.first)
  end
end


cache = LRUCache.new(2)

puts cache.put(1, 1)
puts cache.put(2, 2)
puts cache.get(1)       #// returns 1
puts cache.put(3, 3)    #// evicts key 2
puts cache.get(2)       #// returns -1 (not found)
puts cache.put(4, 4)    #// evicts key 1
puts cache.get(1)       #// returns -1 (not found)
puts cache.get(3)       #// returns 3
puts cache.get(4)       #// returns 4

