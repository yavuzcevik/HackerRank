s = "abcdefghijklmnopqrstuvwxyz"
length = int(input())-1
for i in range(length+1):
    print("-".join(s[length:length-i:-1] + s[length-i:length+1]).center(4 * (length+1) - 3, '-'))
