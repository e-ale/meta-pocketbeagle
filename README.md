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
* branch: gatesgarth

Layer Notes:
-----------
Up until this point, all releases/branches were done with 2 simultaneous
branches: one that used linux-yocto, and one that used linux-stable. For
example there are two dunfell branches:
	- dunfell:    for use with linux-yocto
	- OE/dunfell: for use with linux-stable
The non-OE variants were expected to be used with the poky layers (poky/meta,
poky/meta-yocto-bsp) and the OE variants were to be used with
openembedded-core + bitbake directly.

With this release, gatesgarth, I've combined these two branches into one. From
now on there is just one branch. By default the kernel will be linux-stable
(which is an arbitrary decision) but a linux-yocto bbappend is provided if the
user wishes to use that one instead. Simply set the PREFERRED_PROVIDER in your
configuration to pick the non-default. In both cases the tested arrangement is
with openembedded-core + bitbake (nodistro).

Contributing:
------------
To contribute to this layer, please submit pull requests to:
> https://github.com/e-ale/meta-pocketbeagle
