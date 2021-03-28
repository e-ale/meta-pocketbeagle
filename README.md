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

Layer Notes:
-----------
By default the kernel is linux-stable but a linux-yocto bbappend is
provided if the user wishes to use that one instead. Simply set the
PREFERRED_PROVIDER in your configuration to pick the non-default. In
both cases the tested arrangement is with openembedded-core + bitbake
(nodistro).

Contributing:
------------
To contribute to this layer, please submit pull requests to:
> https://github.com/e-ale/meta-pocketbeagle
