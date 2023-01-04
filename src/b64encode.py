#! /usr/bin/env python3


import sys
import base64


def arg_help(*args, **kwargs):
    print(f"Usage: {args[0]} [TEXT]")
    sys.exit(0)

def base64encode(words: str) -> str:
    out = base64.b64encode(words.encode("ascii")).decode("ascii")
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

    print(base64encode(words))
    sys.exit(0)


if __name__ == '__main__':
    main(*sys.argv)
