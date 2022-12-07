# martinesay

Non-configurable thinking jellyfish (and no more).

## Contents

1. [Synopsis](#synopsis)
2. [Install](#install)
3. [License](#license)

## Synopsis

    martinesay [something]

The **martinesay** utility prints an ASCII picture of a jellyfish thinking _something_.
Jellyfishes are somewhat limited so complicated thought will be abruptly stopped short.
This specific jellyfish is named Martine and she lives on the Internet.

People from Normandy will probably prefer to use the lesser known utility`cowsay`.
In order to not aggravate them this implementation provide some limited command line options compatibility: it is possible to _try_ to configure Martine's eyes and tongue, although the program will deny such request.
It should be known that jellyfishes do not have, in fact, eyes and tongue.
No, they do not, check it on Wikipedia.

Other compatibility options are listed in the [man page](./martinesay.1).

## Install

To install globally:

    $ make
    # make install

To install in your `$HOME/bin`:

    $ DESTDIR=~/ make install

## License

This code is public domain.
