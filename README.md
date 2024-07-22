# Beginning Python Course

This repository contains a reformatted
edition of [Matt Williams](milliams.com)
beginning python course.

🛑🛑🛑🛑🛑🛑🛑🛑
This course is currently under development
🛑🛑🛑🛑🛑🛑🛑🛑


# Dependencies

* Full dependencies managed in conda. Can be found in requirements.txt.

* Dependencies for github actions can be found in `requirements-actions.txt`

## Notes

When publishing for the first time, run this
command locally:

```
quarto publish gh-pages
```

### Running Cells

Please not we want cells within the course to actually run. So you may see a format like this in how the course notes are written:

``` `

# This writes the code snippet at the
# bottom to a file
```{python}
#| echo: false
#| output: false
%%writefile ../scripts/script.py

print("Hello from Python")
```
# This includes the contents of that file
# in the notes
```{.python include="../scripts/script.py" filename="script.py"} 
```



````