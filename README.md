# RPi HEOS scrobbler

Update now playing and scrobble tracks listened with HEOS device to Last.fm. Tracks to be scrobbled must have artist and title in metadata.

Requirements: Docker, Docker-Compose, Last.fm account & API account (create later here: https://www.last.fm/api/account/create)

This version works on operating systems based on ARMv7 architecture. Tested with Raspberry Pi 4 Model B 4 GB, Raspbian Buster and Docker 19.03.1.

1. `git submodule init`
2. `git submodule update`
3. Create `.env` files in `heos-scrobbler` subdirectories based on `example.env` files.
4. `./start.sh`
5. After the stack has started, visit `<YOUR_MONGO_EXPRESS_HOST>:<YOUR_MONGO_EXPRESS_PORT>` using the username and password you've set and at `heosScrobbler.heosPlayers` setup players and their configuration you want to use for scrobbling. You do not need to restart the stack. Click the player you want to edit, do your edits and hit save.
6. Same address, at `heosScrobbler.lastFmUsers` click the user you want to modify, input your Last.fm username and password and save. `heos-track-scrobbler` will generate a Last.fm session key for your account and delete the password from the database next time it attempts to scrobble (i.e. you've listened a track with your HEOS device). When you change your Last.fm user configuration you don't have to restart the stack
