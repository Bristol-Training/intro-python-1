# Files

Everything we've done so far has been completely self-contained in the script and every time we run any of them we will get exactly the same output. The power of programming is to be able to take the same piece of code and apply it to different data to get different results. One common way in which this is done is writing a script which can analyse a data file. To do that we need to learn how to open files.

The simplest this we can do with files is read a file in and print it to the screen. Make a new script called `file.py` and put the following in it:


```python
%%writefile file.py

with open("file.py") as f:
    for line in f:
        print(line, end="")
```

    Overwriting file.py


When you run it, you will see the following:


```python
%run file.py
```

    
    with open("file.py") as f:
        for line in f:
            print(line, end="")


which is (somewhat recursively) the contents of the file `file.py`.

There are a few new things here so let's go through them in turn. The first thing is to open the file. You open files using the `open` function. The part `open("file.py")` says to open the file `file.py`. This returns a *file handle* which is assigned to the variable `f`. If the file does not exist, or is not readable then the script will exit with an error (have a try and see what the error looks like!). The use of a `with` statement means that when the code inside the `with` block has finished running the file will be closed automatically.

In the next line (`for line in f:`) we are looping over the lines of the file. This loop looks just like those we used when looping over lists a few chapters previously. When looping over a list you get each of the *elements* in turn but when looping over an open file you get each of the *lines* in turn. We assign the string containing the line from the file to the variable `line`.

Finally, we print the string `line`. Each line in the file already ends with a "new-line" character so when it is printed, it will print the new-line too. By default the `print` function will also add its own new-line so we disable that by using `end=""`.

### Exercise #

- Printing out Python code isn't the most useful so let's make a data file to read instead. Make a new file called `data.txt` and put inside it:

  ```
  12
  54
  7
  332
  54
  1
  0
  ```
- Edit `file.py` so that it prints out the contents of `data.txt` instead. 

<!-- [<small>answer</small>](answer_first_read_data.ipynb) -->

## Data type conversion

Simply reading the data and printing it isn't very useful. Let's take a first step towards some data analysis and pretend that the task we're trying to do is to read in data from the file and add 17 to each value.


```python
%%writefile file.py

with open("data.txt") as f:
    for line in f:
        new_number = line + 17  # Here is where we do our "data analysis"
        print(new_number, end="")
```

    Overwriting file.py


If you edit `file.py` to contain this code and run it you should see an error:

```
Traceback (most recent call last):
  File "file.py", line 3, in <module>
    new_number = line + 17
TypeError: can only concatenate str (not "int") to str
```

This is telling us that there is an error occuring when trying to add 17 to the data read in from the line in the file. The *type* of the error is `TypeError` which tells us the problem is likely due to incorrect data types (i.e. string, float, int, list etc.). The error message says `can only concatenate str (not "int") to str` which implies that the computer believes that we're trying to concatenate (join together) something with a string. The only two things involved in this operation are `line` and `17`. We know that `17` is an integer so `line` must be a string!

When reading from a file like this, everything it gives you will *always* be a string, even if the string only contains digits like `"12"`. If we know that the file only contains integers then we can convert each number as it comes in using [the `int` function](https://docs.python.org/3/library/functions.html#int). Also, since we're now printing integers, we no longer need the `end=""` tweak:


```python
%%writefile data.txt
12
54
7
332
54
1
0
```

    Overwriting data.txt



```python
%%writefile file.py

with open("data.txt") as f:
    for line in f:
        number = int(line)  # Here we do the type conversion
        new_number = number + 17  # Here is where we do our "data analysis"
        print(new_number)
```

    Overwriting file.py


Running this new script will now print out our "processed" data:


```python
%run file.py
```

    29
    71
    24
    349
    71
    18
    17


### Exercise #

- Change `file.py` to multiply the data by 10 instead of adding 17. 

<!-- [<small>answer</small>](answer_multiply_data.ipynb) -->
- After looping though the data, print out the sum of all the data values seen.
  - hint: Make an integer before the loop, initially set to zero and add to it each time around the loop
  - hint: You can increase an integer by an amount using `+=` like:
    ```
    num = 3
    num += 4
    print(num)  # `num` will now be 7
    ```
  <!-- - [<small>answer</small>](answer_data_sum.ipynb) -->
- Print out the count of the number of data points seen as well. 

<!-- [<small>answer</small>](answer_data_sum_count.ipynb) -->
- Print out the mean average of the data in the file. 

<!-- [<small>answer</small>](answer_data_mean.ipynb) -->
- See what happens if you run the script after deleting the contents of `data.txt`. Add an `if` statement to fix it. 

<!-- [<small>answer</small>](answer_divide_zero.ipynb) -->
- Collect the statistics into a summary dictionary with keys `"sum"`, `"count"` and `"mean"`. 

<!-- [<small>answer</small>](answer_data_summary_dict.ipynb) -->
