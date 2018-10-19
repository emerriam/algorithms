require 'byebug'
def levenshteinDistance(word1, word2)
  m = word1.length
  n = word2.length
  return m if n == 0
  return n if m == 0
  d = Array.new(m+1) {Array.new(n+1)}
debugger
  (0..m).each {|i| d[i][0] = i}
  (0..n).each {|j| d[0][j] = j}
  (1..n).each do |j|
    (1..m).each do |i|
      d[i][j] = if word1[i-1] == word2[j-1]  # adjust index into string
                  d[i-1][j-1]       # no operation required
                else
                  [ d[i-1][j]+1,    # deletion
                    d[i][j-1]+1,    # insertion
                    d[i-1][j-1]+1,  # substitution
                  ].min
                end
    end
  end
  d[m][n]
end


strWord1 = "bat"
strWord2 = "cat"

res = levenshteinDistance strWord1, strWord2
print "ANSWER: #{res}\n"