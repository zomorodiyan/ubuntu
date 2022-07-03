def str_formating(name, value):
    print(f"The value of {name} is {value}")


def write_to_file(filename):
    with open(filename) as f:
        f.write("hello\n")
