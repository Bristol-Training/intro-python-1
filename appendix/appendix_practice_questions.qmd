# Practice questions

This page contains a number of questions and exercises to give you a chance to practise what you have learned this session.

You should create a new `.py` Python file for each exercise.

### Exercise 1

Create a list containing 5 different animal types, for example:
- cat
- dog
- elephant
- minnow
- beaver

Print out the list to the screen.

### Exercise 2

Start by copying the code that you used to create the list of animals in the last exercise. Write a loop which will print out each of the animals, prefixed with `Species: `. For example the output could look like:
```
Species: cat
Species: dog
Species: elephant
Species: minnow
Species: beaver
```

### Exercise 3

Create a list containing 10 different numbers, ranging from 0 to 100. For example: $65, 54, 17, 78, 66, 24, 32, 80, 79, 95$.

Write a loop which will print out only those numbers which are larger than 50.

### Exercise 4

Create a loop which iterates over the numbers from 1 to 20 (inclusive). Inside the loop:
- if the number is divisible by three then print "ook",
- if the number is divisible by both three and five then print "foo",
- and if the number is not divisible by either then just print the number.

<small><button onclick="var x = document.getElementById('hint-ghrndo');if (x.style.display === 'none') {x.style.display = 'inline';} else {x.style.display = 'none';}">Hint: </button><span style="display: none;" id="hint-ghrndo"> You can use the <code>%</code> operator to <a href="https://docs.python.org/3/reference/expressions.html#index-68">find the remainder from a division</a>. Also, take care in the order that you do your <code>if</code>/<code>elif</code>.</span></small>

### Exercise 5

Make a dictionary from the following table of data. The keys of the dictionary should be the names of the paintings and the values should be name of the artist.

| Painting            | Artist    |
| ------------------- | --------- |
| Sunflowers          | van Gogh  |
| The Starry Night    | van Gogh  |
| The Night Watch     | Rembrandt |
| The Two Fridas      | Kahlo     |
| Balloon Girl        | Banksy    |
| Devolved Parliament | Banksy    |
| Going to Work       | Lowry     |

Write some code which will print out the work of art and the name of the artist if:
1. the artist's name has an "h" in it,
2. or the name of the artwork is longer than 13 letters.

<small><button onclick="var x = document.getElementById('hint-ghtuid');if (x.style.display === 'none') {x.style.display = 'inline';} else {x.style.display = 'none';}">Hint: </button><span style="display: none;" id="hint-ghtuid"> There is an <a href="https://docs.python.org/3/reference/expressions.html#membership-test-details"><code>in</code> operator</a> for searching inside strings and a <a href="https://docs.python.org/3/library/functions.html#len"><code>len</code> function</a> for seeing how long something is.</span></small>

### Exercise 6

Make a dictionary of the same information as the last question, but the other way around this time. The key in the dictionary should be the name of the artist, and the value should be a list of names of their paintings.

Write some code which will check *every painting* in the data set. Print out the work of art and the name of the artist if:
1. the artist has more than one painting
2. and the name of the painting has more than one word.

<small><button onclick="var x = document.getElementById('hint-jgntug');if (x.style.display === 'none') {x.style.display = 'inline';} else {x.style.display = 'none';}">Hint: </button><span style="display: none;" id="hint-jgntug"> Some artists only have one work of art here. Consider putting their single artwork in a single-item list, rather than just as a string.</span></small>

### Exercise 7

Create a list with some words in it, making sure some words are repeated.

The task is to fill up a dictionary so that it contains the count of the number of times each word appears in the list.

So, for example if your word list looks like:
```python
word_list = ["to", "be", "or", "not", "to", "be"]
```
then the output dictionary would look like:
```python
{"to": 2, "be": 2, "or": 1. "not": 1}
```

<small><button onclick="var x = document.getElementById('hint-ownfue');if (x.style.display === 'none') {x.style.display = 'inline';} else {x.style.display = 'none';}">Hint: </button><span style="display: none;" id="hint-ownfue"> You can check whether a dictionary already has a particular key in it using the <code>in</code> operator.</span></small>
