#!/usr/bin/env python3
import sys
from subprocess import Popen, PIPE

with open(sys.argv[1]) as f:
    contents = f.read()

indents = 0

def beginning_indents(line):
    if line == "":
        return 0
    spaces = 0
    while line[spaces] == " ":
        spaces += 1
    return int(spaces/4)

lines = contents.split("\n")
out = ""
for i in range(len(lines)):
    if i == 0:
        out += lines[i] + " ENDLINE\n"
        continue
    diff = beginning_indents(lines[i]) - beginning_indents(lines[i-1])
    if diff < 0:
        for j in range(-diff):
            out += "DEDENT\n"
    elif diff > 0:
        for j in range(diff):
            out += "INDENT\n"
    out += lines[i] + " ENDLINE\n"

print(out)

p = Popen(['shreppl-hs/TestShre'], stdout=PIPE, stdin=PIPE, stderr=PIPE)
p.stdin.write(out.encode())
p.stdin.close()
sys.stdout.write(p.stdout.read().decode("utf8"))
sys.stdout.write(p.stderr.read().decode("utf8"))
