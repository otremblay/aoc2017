maze = []
with open('maze.txt') as my_file:
    for line in my_file:
        maze.append(int(line))
count = 0
i = 0
while True:
	j = i
	i = i + maze[i]
	if maze[j] >= 3:
		maze[j] -=1
	else:
		maze[j] += 1
	count += 1
	if i < 0 or i >= len(maze):
		break
print(count)