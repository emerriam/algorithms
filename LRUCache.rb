# LRU Cache
# Key-value store -- like a hash
# Basic operations are get and set (or whatever you want to call them)
# Set takes a key and value
# Get takes a key and returns the value that was previously set
# When initialized the LRU cache has a maximum size.
# When you add a key/value that would exceed the maximum size of the cache, it evicts a kv
# It removes the kv that was "least recently used."  Used is either get or set

class LRUCache

  def initialize(value, key, size)
    @store_hash = {}
    @index_hash = {}
    
    @hash_size = size
    @store_hash[key] = value    
    @index_hash[key] = Time.now
  end
  
  def [](key)
    return @store_hash[key]
  end
  
  def get_time_created(key)
    return @index_hash[key]
  end
  
  def get_latest_created
    @index_hash.sort
    return @index_hash.first
    
  end
  
  def []=(key, value)
    if @store_hash.length < @hash_size
      @index_hash[key] = Time.now
      @store_hash[key] = value
    else
      evict_key
      self[key] = value
    end
  end
  
  def size
    return @store_hash.size
  end
    
  def delete(key)
    @index_hash[key].delete
    
  end
  
  def evict_key
    latest = get_latest_created
    @store_hash.delete(latest[0])
    @index_hash.delete(latest[0])
  end
    
  def print
    @store_hash.each do |key, value|
      puts [key, value, @index_hash[key]]
    end
  end
end


cache = LRUCache.new("value1", "key1", 2)
print cache["key2"] = "value2"
print cache["key3"] = "value3"
print cache["key4"] = "value4"
print "\n hash printed is #{cache.print}"
print "\nhash size is #{cache.size}\n"
print "\n cache values: #{cache.get_latest_created}"

