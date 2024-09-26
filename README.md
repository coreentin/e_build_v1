
## Building PHH-based  /e/ OS GSIs ##

To get started with building  /e/ OS GSI, you'll need to get familiar with [Git and Repo](https://source.android.com/source/using-repo.html), and set up your environment by referring to [LineageOS Wiki](https://wiki.lineageos.org/devices/redfin/build) (mainly "Install the build packages") and [How to build a GSI](https://github.com/phhusson/treble_experimentations/wiki/How-to-build-a-GSI%3F).


First, open a new Terminal window, create a new working directory for your LineageOS build (leaos for example) and navigate to it:

    mkdir eos; cd eos
    
Initialize your  /e/ OS workspace:

    repo init -u https://gitlab.e.foundation/e/os/android.git -b v1-r --git-lfs

Clone both this and the patches repos:

    git clone https://github.com/coreentin/e_build_v1-t e_build_v1 -b v1-r
    git clone https://github.com/coreentin/e_patches_v1-t e_patches_v1 -b v1-r

Finally, start the build script (64VN = Vanilia / 64GN = GoogleApps):

    bash e_build_v1/build.sh treble 64VN


Be sure to update the cloned repos from time to time!

---

EMUI 8 targets for Huawei re generated from AB images instead of source-built - refer to [huawei-creator](https://github.com/iceows/huawei-creator).

---

This script is also used to make builds without sync repo. To do so add nosync in the command build line.

    bash e_build_v1/build.sh treble nosync 64VN

## Building ANE-LX1 (P20 Lite) device  /e/ OS GSIs ##

    bash e_build_v1/build.sh device anne

---
