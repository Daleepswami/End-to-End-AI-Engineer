# mypackage/string_utils.py
def capitalize_all(words):
    return [w.capitalize() for w in words]


def shout(text):
    return text.upper() + "!"
