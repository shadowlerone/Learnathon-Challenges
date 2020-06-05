string_given = 'I am great in coding!'

split_string = string_given.split(" ")

new_list = []

for words in split_string:
    if words[0].lower() in  ['a','e','i','o','u']:
        new_list.append(words)
        
print(" ".join(new_list))