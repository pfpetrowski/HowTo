#! usr/bin/env

import sys
import binascii


filepath = sys.argv[1]
print(filepath)

def iszip(file):

	with open(file, 'rb') as f:
		chunk = f.read(16)
		chunk = binascii.hexlify(chunk)
		
		signature = chunk[0:8]

		print(signature)

		if signature == b'504b0304':
			return(True)
		else:
			return(False)


if __name__ == "__main__":
	verdict = iszip(filepath)
	print(verdict)


# with open(filepath, 'rb') as f:
# 	chunk = f.read(16)
# 	chunk = binascii.hexlify(chunk)
# 	print(chunk)

# 50 4b 03 04 14 00 00 00 08 00 d5 6c 94 4f be 61
# 50 4b 03 04 14 00 00 00 08 00 13 5d d2 50 7f a9
# 50 4b 03 04 14 00 00 00 08 00 27 6b 98 4f 6d 7b