def queens(q1, q2):
    # horizontal and vertical capture
    if (q1[0] == q2[0]) or (q1[1] == q2[1]):
        return True

    # diagonal capture
    letters = ["A", "B", "C", "D", "E", "F", "G", "H"]
    nums = [1, 2, 3, 4, 5, 6, 7, 8]

    """
    From here on, it gets very confusing. I sincerely apologize
    to who has to read this.

    The method this takes is that it goes down each diagonal path
    the queen can go, and checks them one by one to see if the other
    queen is there. 
    
    The same process repeats for each of the four
    diagonal paths with minor differences of adding and subtracting
    to the current position being checked.
    """

    # Checking the diagonal spots towards the bottom left side
    # how many spots down the path we are currently checking
    counter = 1
    # the letter position we are currently checking
    newLetter = chr(ord(q1[0]) - counter)
    newNum = int(q1[1]) - counter           # the number position
    while (newLetter in letters) and newNum in nums:    # while we are still on the board
        if (newLetter + str(newNum)) == q2:  # if the other queen is here
            return True
        counter += 1                        # update the spot position
        newLetter = (chr(ord(q1[0]) - counter))  # update the letter
        newNum -= 1                         # update the number
    # Checking the spots towards the top left, similar process
    counter = 1
    newLetter = chr(ord(q1[0]) - counter)   # decrease the letter position
    # this time we add to the number position
    newNum = int(q1[1]) + counter
    while (newLetter in letters) and newNum in nums:
        if (newLetter + str(newNum)) == q2:
            return True
        counter += 1                            # updating the position
        newLetter = (chr(ord(q1[0]) - counter))
        newNum += 1

    # Checking the spots towards the top right, similar process
    counter = 1
    newLetter = chr(ord(q1[0]) + counter)   # we add to the letter position
    newNum = int(q1[1]) + counter           # add to the number position
    while (newLetter in letters) and newNum in nums:
        if (newLetter + str(newNum)) == q2:
            return True
        counter += 1                        # updating the position
        newLetter = (chr(ord(q1[0]) + counter))
        newNum += 1

    # Checking the spots towards the bottom right, similar process
    counter = 1
    newLetter = chr(ord(q1[0]) + counter)   # add to the letter position
    newNum = int(q1[1]) - counter           # subtract from the number position
    while (newLetter in letters) and newNum in nums:
        if (newLetter + str(newNum)) == q2:
            return True
        counter += 1                        # updating the position
        newLetter = (chr(ord(q1[0]) + counter))
        newNum -= 1
    return False


print(queens("E2", "E4"))       # vertical capture
print(queens("B1", "G1"))       # horizontal capture
print(queens("B5", "D7"))       # diagonal capture
print(queens("A1", "B3"))       # no capture
