import time as timer

running_time = 0

start_time = timer.time()
for i in range(100000):
    pass
running_time += timer.time() - start_time

print("running time", running_time)
