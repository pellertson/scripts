```
 ____            _             _       ____            _       _
|  _ \ __ _ _ __| | _____ _ __( )___  / ___|  ___ _ __(_)_ __ | |_ ___
| |_) / _` | '__| |/ / _ \ '__|// __| \___ \ / __| '__| | '_ \| __/ __|
|  __/ (_| | |  |   <  __/ |    \__ \  ___) | (__| |  | | |_) | |_\__ \
|_|   \__,_|_|  |_|\_\___|_|    |___/ |____/ \___|_|  |_| .__/ \__|___/
                                                        |_|
```
I use these scripts every day.  They're either specifically for use with acme,
or they're too simple to put in their own repository.

To install just run
```shell
$ make install
```

You can change the install directory by changing the `$(DESTDIR)` value in the Makefile.
If you change it to somewhere you don't have file-write permissions, such as
the typical `/usr/local/bin/` directory, you'll just have to run `sudo` in front of the command.

Overview of the scripts:

* [`Corona`](./src/Corona):
  Keeps track of the current COVID-19 epidemic (thanks China!).  You do need to install
  [`json2tsv`](https://www.codemadness.org/json2tsv.html) in order for it to work.

* [`a+`](./src/a+) and [`a-`](./src/a-):
  These scripts indent/outdent my code for me.

* [`displayonacme`](./src/displayonacme):
  Since I output stuff to acme all the time in a standard fashion, I wanted to be able
  to only write that code once and then pipe any actual output I want into that script.

* [`tag`](./src/tag):
  Helps me surround text with an HTML tag.  This is the only Python script in here, and it
  needs to be at least Python 3.6.

