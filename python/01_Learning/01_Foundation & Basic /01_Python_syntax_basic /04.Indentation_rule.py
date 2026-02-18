What is Indentation?
In Python, spaces/tabs define code blocks (if, for, def, etc.). It's SYNTAX - wrong indentation = error! Unlike other languages using {}.
Key Rules

1. 4 Spaces Standard (PEP 8)
Use exactly 4 spaces per level. Avoid tabs.

2. Consistent Indentation
Same block = same spaces:


# ✅ CORRECT
for i in range(3):
    print(f"i = {i}")     # 4 spaces
    if i == 1:
        print("Middle")  # 8 spaces

# ❌ WRONG - IndentationError
for i in range(3):
print(f"i = {i}")  # No indentation!

3. All Code Blocks

def calculate(marks):
    if marks >= 90:       # 4 spaces
        print("A Grade")  # 8 spaces
    elif marks >= 80:     # 4 spaces
        print("B Grade")  # 8 spaces
    else:
        print("C Grade")  # 8 spaces
      
Common Errors:
    TabError: Mixing tabs + spaces
    IndentationError: Wrong space count
    Missing colon : after if/for/def

