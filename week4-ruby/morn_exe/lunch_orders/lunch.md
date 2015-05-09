## Lunch Orders

It's approaching lunch hourâ€¦ let's collect orders. Create a new file called `lunch_orders.rb` to complete this exercise.

1. Create a program that collects lunch orders. Prompt:
  * **Name for order:** (enter name)
  * **{name} wants to order:** (enter item)
2. Store the name/order data. When storing data, do it in such a way that additional order items may be added for the person's name.
  * Example: **Greg** can order a *Burger*, and then add *Fries* to his order later.
3. After storing data, prompt the user with:
  * **Add another item to the order? (y/n)**
  * Repeat steps 1 & 2 if the answer is "y"
3. After the user completes adding orders, print out:
  * **"All orders: {order data}"**

### Keep going...

Rather than printing out a blob of raw lunch order data, print each name's orders on a separate line, formatted as one of the following:

* "Greg ordered a sandwich"
* "Peter ordered a burger & fries"
* "Travis ordered a salad, guac & water"

*You may have to do some hunting in Ruby docs!*

## While we eat our lunch, let's Play High-Card-Wins

Game time! Create a new file called `high_card.rb` for this exercise.

**Methods to research:**

* `each_with_index`
* `max`

**Tasks:**

1. Build a deck of shuffled cardsâ€¦ maybe you can leverage some old code? *Hint: you may want to add some additional card data!*
2. Collect an array of player names by prompting:
  * **"{n} players so far. Enter a player name, or type 'play':"**
  * Maybe you can leverage some old code here?
3. Upon *"play"*, deal each player a card.
4. Find the highest card score dealt (Aces high).
5. Find the winning player name, then print out:
  * **"Winner(s): {name1, name2, â€¦}!"**

### Bonusâ€¦

Print out *one* of the following outcomes:

* **"The winner is {name}!"**
* **"It's a tie between {name1, name2, â€¦}!"**


## Nerd Level Up
Now do it in Javascript.