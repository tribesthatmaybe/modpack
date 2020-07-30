# Streaming

The [Better Records](https://minecraft.curseforge.com/projects/better-records) mod is included in Tribes That May Be and it lets us stream mp3's and oggs straight into the Minecraft world. There are some caveats, and some extras which may be used to pull in non-mp3 sources. This documentation will not cover how to actually build with Better Records as that is both documented on that projects [wiki](https://github.com/NicholasFeldman/BetterRecords/wiki) and also coverd by the Tribes That May Be quest book.

# Caveats

* Only players who are present when a record / crystal is played will hear it. This means that as users come and go the record / crystal will need to be removed from the player and re-inserted.
* Speaker wire length is quite short. There is a [fix pending](https://github.com/NicholasFeldman/BetterRecords/pull/109).
* Block interactions (attaching wires, inserting crystals/records) can be delayed and sometimes fail. When the interaction fails the wire / crystal / record will eventaully re-appear in your inventory.

# Stream Mashups

Using the [streamlink](https://streamlink.github.io/) tool, combined with an icecast host, it's possible to convert streams from external services such as Twitch and a [pile of others](https://streamlink.github.io/plugin_matrix.html) into a format which Better Records can use as a radio stream.

1. Register for an account with [listen2myradio](http://www.listen2myradio.com/). When setting up your server make sure to select `icecast`
2. Download and install `streamlink`. It requires Python 3 and you should use a [`virtualenv`](https://virtualenv.pypa.io/en/latest/) to make your life easier.
3. Download and install [`ffmpeg`](https://ffmpeg.org/)

Once this is all done, in theory you should be able to start streaming to your icecast server hosted by listen2myradio. Make sure to use the password, IP address, and port provide to you by listen2myradio.

```
$ streamlink https://some.stream.url/ audio_only -O | \
    ffmpeg -i pipe:0 -c copy -acodec libmp3lame -content_type audio/mpeg \
    -f mp3 icecast://source:REDACTED@127.0.0.1:1234/stream
```

Once this is done you should be able to tune a radio crystal to the IP / port provided to you by listen2myradio.
