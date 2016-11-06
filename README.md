# How to setup and use

0. Run Minecraft Pi edition or Raspberry Juice
  - 'docker run -it -p 25565:25565 -p 4711:4711 wh11e7rue/raspberryjuice'
  - or `docker run -it -p 25565:25565 -p 4711:4711 lunran/raspberryjuice` if you have Vivecraft
0. Run Minecraft (or Vivecraft)
  - Select "Multiplayer"
  - Add the IP address as a new server
    - If you're running Docker in a Docker Machine VM, execute `docker-machine ip <VM-name>` to find it out.
      - e.g. `docker-machine ip default`
    - Otherwise use "localhost"
  - Join it!
0. Run this Docker build.
  - `docker run -it lunran/picraft`
0. Import Picraft
  - `from picraft import *`
0. Connect to the server.
  - If you're running Docker in a Docker Machine VM,
    - `world = World('VM-IP')`
      - e.g. `world = World('192.168.99.100')`
    - Execute `docker-machine ip <VM-name>` if you don't know the IP address.
      - e.g. `docker-machine ip default`
  - If you're running Raspberry Juice locally or in a local docker container,
    - `world = World()`
0. You'll see a tower of gold with the following command.

```python
with world.connection.batch_start():
    for y in range(0, 100):
        world.blocks[world.player.tile_pos - Vector(x=10,y=y)] = Block('gold')
```

Cast a spell of Python in Minecraft!
