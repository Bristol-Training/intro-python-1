# Answers for the practice questions

## Exercise 1


```python
%%writefile ex1.py

animal_list = ["cat", "dog", "elephant", "minnow", "beaver"]

print(animal_list)
```

    Overwriting ex1.py



```python
%run ex1.py
```

    ['cat', 'dog', 'elephant', 'minnow', 'beaver']


## Exercise 2

We can pass multiple argumets to `print()`:


```python
%%writefile ex2.py

animal_list = ["cat", "dog", "elephant", "minnow", "beaver"]

for animal in animal_list:
    print("Species:", animal)
```

    Overwriting ex2.py



```python
%run ex2.py
```

    Species: cat
    Species: dog
    Species: elephant
    Species: minnow
    Species: beaver


## Exercise 3


```python
%%writefile ex3.py

my_numbers = [65, 54, 17, 78, 66, 24, 32, 80, 79, 95]

for num in my_numbers:
    if num > 50:
        print(num)
```

    Overwriting ex3.py



```python
%run ex3.py
```

    65
    54
    78
    66
    80
    79
    95


## Exercise 4

When creating a chain of `if`/`elif`/`else`, you should put the most specific checks first, otherwise they will be swamped by the more general checks.


```python
%%writefile ex4.py

for i in range(1, 21):
    if i % 3 == 0 and i % 5 == 0:
        print("foo")
    elif i % 3 == 0:
        print("ook")
    else:
        print(i)
```

    Overwriting ex4.py



```python
%run ex4.py
```

    1
    2
    ook
    4
    5
    ook
    7
    8
    ook
    10
    11
    ook
    13
    14
    foo
    16
    17
    ook
    19
    20


## Exercise 5

We can check multiple things in a single `if` statement by chaining them with `or` or `and`:


```python
%%writefile ex5.py

artworks = {
    "Sunflowers": "van Gogh",
    "The Starry Night": "van Gogh",
    "The Night Watch": "Rembrandt",
    "The Two Fridas": "Kahlo",
    "Balloon Girl": "Banksy",
    "Devolved Parliament": "Banksy",
    "Going to Work": "Lowry",
}

for artwork, artist in artworks.items():
    if "h" in artist or len(artwork) > 13:
        print(artwork, "by", artist)
```

    Overwriting ex5.py



```python
%run ex5.py
```

    Sunflowers by van Gogh
    The Starry Night by van Gogh
    The Night Watch by Rembrandt
    The Two Fridas by Kahlo
    Devolved Parliament by Banksy


## Exercise 6

You cannot have repeated keys in a dictionary so we need some way of relating the same key with multiple values. This is best done with a list as the value.

Even if an artist has only one painting, we still use a list. This is becasue it allows any code which reads the values to *know* that it will always get a list, rather than sometimes a list, sometimes a string.


```python
%%writefile ex6.py

gallery = {
    "van Gogh": ["Sunflowers", "The Starry Night"],
    "Rembrandt": ["The Night Watch"],
    "Kahlo": ["The Two Fridas"],
    "Banksy": ["Balloon Girl", "Devolved Parliament"],
    "Lowry": ["Going to Work"],
}

for artist, paintings in gallery.items():
    if len(paintings) > 1:
        for painting in paintings:
            if len(painting.split()) > 1:
                print(painting, "by", artist)
```

    Overwriting ex6.py



```python
%run ex6.py
```

    The Starry Night by van Gogh
    Balloon Girl by Banksy
    Devolved Parliament by Banksy


## Exercise 7


```python
%%writefile ex7.py

word_list = ["to", "be", "or", "not", "to", "be"]

word_couts = {}

for word in word_list:
    if word in word_couts:
        word_couts[word] += 1
    else:
        word_couts[word] = 1

print(word_couts)
```

    Overwriting ex7.py



```python
%run ex7.py
```

    {'to': 2, 'be': 2, 'or': 1, 'not': 1}

