def hey(what):
    response = {"": "Whatever.",
                 "question": "Sure.",
                 "silence": "Fine. Be that way!",
                 "upper": "Whoa, chill out!"}

    what = what.strip()
    state = ""

    if what.endswith("?"):
        state = "question"
    if what.isupper():
        state = "upper"
    if what == "":
        state = "silence"

    return response[state]
