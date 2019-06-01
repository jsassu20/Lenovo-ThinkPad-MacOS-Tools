![Screenshot](Tools/Logo/screenshot.png)

# Tools For Lenovo T450 Hackintosh Setup

This folder contains a number of different useful tools I find helpful with setting up the full macOS system on the Lenovo ThinkPad T450 Ultrabook. You may not find them useful but they're here for anyone to checkout and use if they want.

#

### Audio Configuration

- Contains 2 separate methods for successfully getting proper system audio functionality with with this configuration. (Credit JCSNIDER for ALC3232 Method and ACIDANTHERA for AppleALC Lilu Plugin)

#

### Guides

- Collection of setup guides for a number of different Hackintosh builds and situations. Mainly related to the hardware present in the Lenovo ThinkPad T450 but also includes different universal guides for standard hackintosh tools.

#

### HD Graphics 5500

- Different monitor configurations for my personal setup. HIDPI is enabled and working very well. The clarity is very impressive, other tools for configuring proper DVMT options on systems with locked BIOS configurations.

#

### HomeEndFix

- Fixes the Home and End button configurations on ThinkPad Hackintosh setups to match Macintosh hardware in the macOS environment.

#

### Hot Patching

- All of my current files used for HotPatching Lenovo ThinkPad T450 and a bunch of other ".dsl" files which can be used as well. 

#

### Kexts

- Contains the current kernel extensions in use with my build. There are 3 folders present within this directory, the "Other" folder which contains all of the kext files which Clover injects into the kextcache at startup if you haven't installed the kext files to the system (/Library/Extensions). The "System" folder which contains all of the kext files which I personally like to install directly to the system. There is a ".command" file which goes with this folder and upon running the command script all kext files present in the "System" directory will be installed directly into "/Library/Extensions" and the permissions and kernel cache will be automatically repaired. The final folder is the "Miscellaneous" folder which contains a few different kext files which can also be used but are currently off.

#  

### maciASL Patches

-  Collection of different maciASL patches for static patching hackintosh DSDT configurations depending on your current pc hardware setup. This folder has plenty of different patches for plenty of different hardware setups, not just Lenovo ThinkPads, however ThinkPads have a designated section specifically for them. Use these patches in conjunction with maciASL to fix errors with your DSDT if you choose to patch your DSDT yourself over going with a precompiled Hot Patch configuration if one exists for your hardware.

#

### Permissions

- Utility for fixing all permissions including kext and other. Run this if you're having issues with kext permissions or if you just want to repair you permissions easily. (Credit insanelyi.com for this script).

#

### ssdtPRGen

- Script for creating a custom SSDT.aml file for your hardware in order to have a functional power configuration for your processor. (Credit goes to Piker for creating this script).

#

### Static Patching

- Files for Static Patching the Lenovo ThinkPad T450 Ultrabook. This is my personal configuration that I patched myself completely with the help of different guides I found online. This configuration may function on some T450's but no other hardware will work with it like my Hot Patched setup will. Static Patched DSDTs are unique and require that the owner of the actual computer make their own Static Patched configuration by patching their own DSDT.dsl using patches and the maciASL application for macOS.

#

### Tools

- Different folders for different purposes like installing useful binaries to the /usr/local/bin folder which can be very helpful with Hackintosh computers. 

#

### TrackPad

- Contains different TrackPad configuration options including VoodooPS2Controller, ApplePS2SmartTouchPad, a Preference Pane for extra trackpad control which works with both Voodoo and ApplePS2 setups. Also includes a way for people who have installed the Lenovo T440 TrackPad Synaptic UltraNav ClickPad to automatically remove VoodooController and associated files and replaces them with ApplePs2SmartTouchPad and it's files.

#

### USB WiFi

- Different kext files for use with many different USB WiFi dongles that are supported within the macOS operating system.