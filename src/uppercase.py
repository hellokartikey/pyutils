#! /usr/bin/env python3


import sys


def arg_help(*args, **kwargs):
    print(f"Usage: {args[0]} [TEXT]")
    sys.exit(0)


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

    print(words.upper())
    sys.exit(0)


if __name__ == '__main__':
    main(*sys.argv)
