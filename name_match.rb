
def name_match(aliases, target)
	return true if aliases.include?(target)

	aliases.each do |a|
		a = a.split(' ')
		return true if !!target.match(/#{a[0]} #{a[2]}/)
		return true if !!target.match(/#{a[0]} #{a[1][0]} #{a[2]}/)
		return true if !!target.match(/#{a[0]} #{a[1]}.* #{a[2]}/)
		return true if !!target.match(/#{a[1]} #{a[2]}/)
		return true if !!target.match(/#{a[1]} #{a[0][0]} #{a[2]}/)
	end
	false
end

# The name_match method will be required to pass the following tests:
#
# # 1. Exact match

known_aliases = ['Alphonse Gabriel Capone', 'Al Capone']
print "\n"
print name_match(known_aliases, 'Alphonse Gabriel Capone') # => True
print "\n"
print name_match(known_aliases, 'Al Capone') # => True
print "\n"
print name_match(known_aliases, 'Alphonse Francis Capone') # => False
print "\n-----"

# #
# 2. Middle name missing (on alias)

known_aliases = ['Alphonse Capone']
print "\n"
print name_match(known_aliases, 'Alphonse Gabriel Capone') # => True
print "\n"
print name_match(known_aliases, 'Alphonse Francis Capone') # => True
print "\n"
print name_match(known_aliases, 'Alexander Capone') # => False
print "\n-----"

#
# 3. Middle name missing (on record name)

known_aliases = ['Alphonse Gabriel Capone']
print "\n"
print name_match(known_aliases, 'Alphonse Capone') # => True
print "\n"
print name_match(known_aliases, 'Alphonse Francis Capone')# => False
print "\n"
print name_match(known_aliases, 'Alexander Capone') # => False
print "\n-----"
#
#
# 4. More middle name tests
# These serve as a sanity check of your implementation of cases 2 and 3

known_aliases = ['Alphonse Gabriel Capone', 'Alphonse Francis Capone']
print "\n"
print name_match(known_aliases, 'Alphonse Gabriel Capone') #=> True
print "\n"
print name_match(known_aliases, 'Alphonse Francis Capone') #=> True
print "\n"
print name_match(known_aliases, 'Alphonse Edward Capone') #=> False
print "\n-----"
#
#
# 5. Middle initial matches middle name
#
known_aliases = ['Alphonse Gabriel Capone', 'Alphonse F Capone']
print "\n"
print name_match(known_aliases, 'Alphonse G Capone') # => True
print "\n"
print name_match(known_aliases, 'Alphonse Francis Capone') # => True
print "\n"
print name_match(known_aliases, 'Alphonse E Capone')  # => False
print "\n"
print name_match(known_aliases, 'Alphonse Edward Capone') #  => False
print "\n"
print name_match(known_aliases, 'Alphonse Gregory Capone')  # => Falsed
print "\n"

#
#
# Bonus: Transposition
#
# Transposition (swapping) of the first name and middle name is relatively common.
# In order to accurately match the name returned from a record we should take this
# into account.
#
# All of the test cases implemented previously also apply to the transposed name.
#
#
# 6. First name and middle name can be transposed
#
# 'Gabriel Alphonse Capone' is a valid transposition of 'Alphonse Gabriel Capone'
#
known_aliases = ['Alphonse Gabriel Capone']
print "\n"
print name_match(known_aliases, 'Gabriel Alphonse Capone') #=> True
print "\n"
print name_match(known_aliases, 'Gabriel A Capone') #=> True
print "\n"
print name_match(known_aliases, 'Gabriel Capone') #=> True
print "\n"
print name_match(known_aliases, 'Gabriel Francis Capone') #=> False
print "\n"


#
#
# 7. Last name cannot be transposed
#
# 'Alphonse Capone Gabriel' is NOT a valid transposition of 'Alphonse Gabriel Capone'
# 'Capone Alphonse Gabriel' is NOT a valid transposition of 'Alphonse Gabriel Capone'
#
known_aliases = ['Alphonse Gabriel Capone']
print "-----\n"
print name_match(known_aliases, 'Alphonse Capone Gabriel') # => False
print "\n"
print name_match(known_aliases, 'Capone Alphonse Gabriel') # => False
print "\n"
print name_match(known_aliases, 'Capone Gabriel') # => False  
print "\n"



