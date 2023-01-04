#! /usr/bin/env python3


import sys


def arg_help(*args, **kwargs):
    print(f"Usage: {args[0]} [TEXT]")
    sys.exit(0)

def rot13(words: str) -> str:
    out = ""
    for char in words:
        if (char.isalpha()):
            if (
                (
                    (ord("z") - ord(char)) > 13 and char.islower()
                ) or
                (
                    (ord("Z") - ord(char)) > 13 and char.isupper()
                )
            ):
                out += chr(ord(char) + 13)
            else:
                out += chr(ord(char) - 13)
        else:
            out += char
    return out


def main(*args, **kwargs):
    if (("-h" in args) or ("--help" in args)):
        arg_help(*args, *kwargs)
    if (len(args) > 1):
        words = ""
        for word in args[1:]:
            words += word + " "
        words.strip()
    else:
        words = sys.stdin.read().strip()

    print(rot13(words))
    sys.exit(0)


if __name__ == '__main__':
    main(*sys.argv)
