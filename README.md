![make-modpack](https://github.com/tribesthatmaybe/modpack/workflows/make-modpack/badge.svg)

# Tribes That May Be

You find yourself in an endless desert with some books and barely appropriate provisions.

Have fun with that.

![desert dust storm](https://github.com/tribesthatmaybe/modpack/blob/mainline/images/ttmb_dust.jpg)

# Launching the modpack

It is recommended that people use [MultiMC](https://multimc.org/) to run this modpack. It also works with the Twitch launcher if you use a custom profile.

The current version of the modpack installed on the ttmbdev server is [this](https://github.com/tribesthatmaybe/modpack/actions/runs/154559356) one. You should be able to download the versioned `ttmb-client` artifact and import it as a custom profile into Twitch or add it as a new instance in MultiMC. If you want to try connecting, the server host is `ttmbdev.spmc.co`. If you find bugs, please report them [here](https://github.com/tribesthatmaybe/modpack/issues).

# Modifying the modpack

![confused bloke](https://i.imgur.com/aSqWoNb.png)

# Building the modpack locally

You've got gumption, kid. I like that.

 1. Follow the instructions in [config.yml.sample](./config.yml.sample) to get a Twitch token for testing
 2. Create a YAML file named `config.yml` with the content `twitch_token: "<token>"`
 3. `make build`
