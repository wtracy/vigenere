import sys

ciphertext = "xfbhlqtlj"
key = [6,1,8,0,3,3,9,8,8,7,4]

def doVigenere(cipher, key):
  if (cipher == None or key == None):
    return None
  else:
    result = ord(cipher) - key
    if (result >= ord('a')):
      return chr(result)
    else:
      return chr(result + 26)

def prettifyString(inp):
  for c in inp:
    if (c != None):
      sys.stdout.write(c)
  sys.stdout.write('\n')

prettifyString(map(doVigenere, ciphertext, key))
