#!/usr/bin/python3

def array_diff(a, b):
    s1 = {a[i] for i in range(len(a))}
    s2 = {b[i] for i in range(len(b))}

    print(s1.symmetric.difference(s2))

array_diff([2, 3, 4, 6], [1, 8, 6])
