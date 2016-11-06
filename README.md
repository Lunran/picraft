# How to setup and use

0. Run this docker build.
  - `docker run -it -p 4711:4711 lunran/picraft`
0. If you're running Raspberry Juice in a Docker Machine VM,
    - (e.g. https://github.com/wh11e7rue/raspberryjuice, https://github.com/Lunran/raspberryjuice4vivecraft)
    - Find out its IP address.
      - `docker-machine ip <VM-name>`
      - e.g. `docker-machine ip default`
    - Connect to the server.
      - `world = World('<container-IP>')`
      - e.g. `world = World('192.168.99.100')`
0. If you're running Raspberry Juice locally or in a local docker container,
    - Connect to the server.
      - `world = World()`
0. You'll see a tower of gold with the following command.

```python
with world.connection.batch_start():
    for y in range(0, 100):
        world.blocks[world.player.tile_pos - Vector(x=10,y=y)] = Block('gold')
```

Cast a spell of Python in Minecraft!
