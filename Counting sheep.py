print('Counting sheep...')

#Consider an array/list of sheep where
#  some sheep may be missing from their place. 
# We need a function that counts the number 
# of sheep present in the array (true means present).

def count_sheeps(sheep):
    return sum([1 for sh in sheep if sh])

def count_sheeps(sheep):
    return sheep.count(True)