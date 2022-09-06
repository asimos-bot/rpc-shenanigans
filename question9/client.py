import rpyc
import sys
import time

if len(sys.argv) < 2:
    exit("Usage {} SERVER".format(sys.argv[0]))

server = sys.argv[1]

conn = rpyc.connect(server,18861)
conn._config['sync_request_timeout'] = None

n = int(input("input number of elements: "))

v = list(map((lambda x: (x[0])), enumerate(range(n))))
start = time.time()
print(conn.root.sum_elements(v))
end = time.time()
print(end-start)
