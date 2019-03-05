s = "abcdefghijklmnopqrstuvwxyz"
for i in range(len(s)):
    print("-".join( s[::-1] + s[len(s)-i-1] + s ))
