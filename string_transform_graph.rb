
require 'byebug'
require 'json'
require 'stringio'

def string_transformation(words, start, stop)
debugger
end

input = "4 cat hat bad had bat had"
# "bat hat had"
words_count = input.strip.to_i
words = Array.new(words_count)
words = ["cat","hat","bad","had"]

start = "bat"
stop = "had"

res = string_transformation words, start, stop
