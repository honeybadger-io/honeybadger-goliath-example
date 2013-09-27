honeybadger-goliath-example
===========================

This is an example [Goliath](https://github.com/postrank-labs/goliath/)
app which reports exceptions to the [Honeybadger Rails Exception
Tracker](https://www.honeybadger.io/).

## Running the server

Replace HONEYBADGER_API_KEY with the api key for your Honeybadger
project:

```sh
~/code/honeybadger-goliath-example ‹master› » HONEYBADGER_API_KEY=asdf ruby david.rb -sv
[39803:INFO] 2013-09-27 11:10:14 :: Starting server on 0.0.0.0:9000 in development mode. Watch out for stones.
```

Then visit: http://0.0.0.0:9000/, which should output:

```json
[:error, "undefined local variable or method `sling' for #<David:0x007ffbc6d48ce8 @opts={}>"]
```

Check your Honeybadger account, you should have a new error report. Enjoy!
