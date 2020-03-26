import sys, os, glob

files = [i for i in glob.glob(sys.argv[1] + "/mk64.*.bin") if 'tkmk00' not in i and 'level' not in i and 'rsp' not in i]
for i in files:
	print(i)