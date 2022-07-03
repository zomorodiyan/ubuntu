from tqdm import tqdm
import time

print("some loop:")
for i in tqdm(range(1000)):
    time.sleep(0.01)
