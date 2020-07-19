![make-modpack](https://github.com/tribesthatmaybe/modpack/workflows/make-modpack/badge.svg) ![downloads](http://cf.way2muchnoise.eu/395107.svg) ![versions](http://cf.way2muchnoise.eu/versions/395107.svg)

# Tribes That May Be

You find yourself in an endless desert with some books and barely appropriate provisions.

Have fun with that.

![desert dust storm](https://github.com/tribesthatmaybe/modpack/blob/mainline/images/ttmb_dust.jpg)

# Launching the modpack

Information on launching the modpack is available on the Tribes That May Be [website](https://tribesthatmay.be/pages/playing.html). For most users it is recommended that builds from the [curseforge](https://www.curseforge.com/minecraft/modpacks/tribes-that-may-be) project page are used.

# Modifying the modpack

![confused bloke](https://i.imgur.com/aSqWoNb.png)

Adding and removing mods is done by editing the [packmaker](https://packmaker.readthedocs.io/en/stable/) [template](templates/packmaker.yml.j2). It is important to also keep our [mod listing](blob/mainline/docs/mods.mdb) up to date with licensing information as part of changing which mods are included.

Configuration for mods can be done by modifying (or creating) files in the [config](tree/mainline/src/config) directory. By using the [copy paste](https://www.curseforge.com/minecraft/mc-mods/copy-paste) mod it is possible to ensure that files will appear in new worlds as well. We use this for [customnpcs](http://www.kodevelopment.nl/minecraft/customnpcs) clones.

# Building the modpack locally

You've got gumption, kid. I like that.

This has only really been tested on a Windows Subsystem for Linux system. You will need Docker, Python3, the `build-essentials` package, and water. Because it is always important to stay hydrated.

 1. Follow the instructions in [config.yml.sample](./config.yml.sample) to get a Twitch token for testing
 2. Create a YAML file named `config.yml` with the content `twitch_token: "<token>"`
 3. `make build`
