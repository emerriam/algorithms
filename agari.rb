=begin
You are in charge of a display advertising program. Your ads are displayed on websites all over the internet. You have some CSV input data that counts how many times that users have clicked on an ad on each individual domain. Every line consists of a click count and a domain name, like this:

counts = [ "900,google.com",
     "60,mail.yahoo.com",
     "10,mobile.sports.yahoo.com",
     "40,sports.yahoo.com",
     "300,yahoo.com",
     "10,stackoverflow.com",
     "20,overflow.com",
     "2,en.wikipedia.org",
     "1,m.wikipedia.org",
     "1,mobile.sports",
     "1,google.co.uk"]

Write a function that takes this input as a parameter and returns a data structure containing the number of clicks that were recorded on each domain AND each subdomain under it. For example, a click on "mail.yahoo.com" counts toward the totals for "mail.yahoo.com", "yahoo.com", and "com". (Subdomains are added to the left of their parent domain. So "mail" and "mail.yahoo" are not valid domains. Note that "mobile.sports" appears as a separate domain near the bottom of the input.)

Sample output (in any order/format):

calculateClicksByDomain(counts)
1340    com
 900    google.com
  10    stackoverflow.com
  20    overflow.com
 410    yahoo.com
  60    mail.yahoo.com
  10    mobile.sports.yahoo.com
  50    sports.yahoo.com
   3    org
   3    wikipedia.org
   2    en.wikipedia.org
   1    m.wikipedia.org
   1    mobile.sports
   1    sports
   1    uk
   1    co.uk
   1    google.co.uk

n: number of domains in the input
(subdomains within a domain are constant)
=end
require 'byebug'
def calculateClicksByDomain(counts)
  store_hash = {}
  i = 0
  while i < counts.size
    parse_domain(counts[i], store_hash)
    i = i + 1
  end

end

private 

def parse_domain(domain_name, store_hash)
  
  hit_count = domain_name.split(',')[0].to_i

  domain_array = domain_name.split(".")
  domain_array[0] = domain_array[0].split(',')[1]

  last_rightmost = ''
  rightmost = domain_array.last

  while domain_array.size > 0
    last_rightmost = rightmost
    rightmost = domain_array.pop
    j = 0
    while j < domain_array.size 

      rightmost = combine_dn(domain_array[j], last_rightmost)
      if store_hash[rightmost] != nil
        store_hash[rightmost] = store_hash[rightmost] + hit_count
      else
        store_hash[rightmost] = hit_count.to_i
      end
      j = j + 1
    end
  end
  return store_hash
end

def combine_dn(rightmost, last_rightmost) 
  return [rightmost, last_rightmost].join('.')
end

counts = [ "900,google.com",
    "60,mail.yahoo.com",
    "10,mobile.sports.yahoo.com",
    "40,sports.yahoo.com",
    "300,yahoo.com",
    "10,stackoverflow.com",
    "20,overflow.com",
    "2,en.wikipedia.org",
    "1,m.wikipedia.org",
    "1,mobile.sports",
    "1,google.co.uk" ]

calculateClicksByDomain(counts)