print("Please insert the size of the Rangoli")
s = "abcdefghijklmnopqrstuvwxyz"
length = int(input()) - 1
for i in range(2 * length  + 1):
    if i < length + 1:
        print("-".join(s[length:length - i:-1] + s[length - i:length + 1]).center(4 * (length + 1) - 3, '-'))
    if  i >= length+1:
        print("-".join(s[length:i - length:-1] + s[i - length:length + 1]).center(4 * (length + 1) - 3, '-'))
