OpenEmbedded BSP Layer for PocketBeagle
=======================================

Introduction:
------------
This layer provides OpenEmbedded BSP support for the
[PocketBeagle](https://beagleboard.org/pocket) and
[BaconBits](https://beagleboard.org/p/mwelling/baconbits-f09ee9) cape which
form the hardware components of the [E-ALE curriculum](https://e-ale.org/).

Dependency:
----------
This layer depends on:
* URI: git://git.yoctoproject.org/openembedded-core
* branch: master

Building with kas:
-----------------

You can use [kas](https://kas.readthedocs.io/en/latest) to build the filesystem
with just one command:

```bash
kas build kas/pocketbeagle.conf
```

Contributing:
------------
To contribute to this layer, please submit pull requests to:
> https://github.com/e-ale/meta-pocketbeagle
