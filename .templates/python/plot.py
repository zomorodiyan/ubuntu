import matplotlib.pyplot as plt

x = range(5)
y = [3, 4, 6, 8, 13]
plt.plot(x, y, "r*")
plt.gca().set_ylim([0, 15])
plt.legend(["dx=1.0", "dx=0.5", "dx=0.1"])
name = "the_title"
plt.title(name)
# plt.savefig('plot/'+name+'.png')
plt.show()
plt.clf()
print("1-" + name + ".png is saved in ./plot")
