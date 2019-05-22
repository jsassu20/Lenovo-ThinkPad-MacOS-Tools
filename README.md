![Screenshot](Utilities/Tools/Logo/screenshot.png)

#
# Lenovo T450 Hackintosh Tools

This repository will hold the tools and scripts I personally use for my own setup but you're free to use as well. The applications that can be found here are not my creation nor do I take any sort of credit for the benefits they provide in the Hackintosh community. All credit for the abilities they provide should go directly to the creators of each app which can be found in the "About this app" section of the applications info.

#
## Applications

Consists of different applications that I find to be useful for the hackintosh process after installing. The basically give you a good amount of options for solving different issues you may run into along with providing a number of useful options for maintaining and keeping up on regular maintenance in order to keep your build running.

### Notable Applications:

- Hackintool: Probably the most useful application next to clover configurator. Provides you with and unprecedented amount of control over your system as well as a number of tools for solving a wide range of issues you'll face along the way.
	 
- Clover Configurator: Tool for configuring Clover's config.plist which is the central point for your systems functionality. There is no better application for handling the Hackintosh systems functionality.
	 
- EFI Mounter: Personally I love this app. It gives you the ability to mount your EFI folder which is where Clover lives and it also can mount the partition automatically on startup which I love.
	 
- GateKeeper Disabler: Gives you a method for disabling GateKeeper which is a mac feature that prevents you from loading 3rd party applications without right clicking the app and selecting open from the pop up menu.
	 
- Folders: Allows you to download an already configured Clover folder for certain systems.
	 
- Kext Updater: Allows you to be able to update all of your kernel extensions to the latest available versions.
	 
- Kext Helper B7: Awesome utility for installing kernel extensions to the system and repairing the kernel cache.

#
## Audio Configuration

Everything needed to create a patched AppleHDA kext which controls system sound. This is the Codec configuration that the T450 uses. This kext will provide you with a perfectly configured sound setup with Microphone and AUX working.

Also includes AppleALC.kext file with a modification made for proper support on ALC3232 based configurations (fixes bad mic).

#
## Clover Configurations 

A collection of config.plist files and tools for hot patching from RehabMan.

#
## Hackintosh Tools

More files from RehabMan for use with Hackintosh setups.

#
## HD Graphics 5500 

An old method for configuring DVMT pre allocated memory if your system is stuck at 32MB in the BIOS. I personally have an unlocked BIOS so I can change mine to whatever now. I recommend unlocking you BIOS which can be done from BIOS-Mods.com along with an SPI programmer and a clip.

#
## Hot Patching

All of my current files used for HotPatching Lenovo ThinkPad T450 and a bunch of other ".dsl" files which can be used as well. 

#
## Kernel Extensions 

The kext fils I use along with the scripts for installing them directly to the system (/Library/Extensions). You have your normal clover kext folder along with the required system kexts in place. Just run the script to install.

#
## maciASL Patches

Different patches for maciASL (static patching DSDT)

#
## Reference Guides

A collection of PDF files which are based on actual Clover configurations for similar hardware to the Lenovo thinkPad T450 and some universal guides.

#
## Static Patching

My T450 Static patch method. This should only be used with T450s and may not work. The SSDTs are universal but you may have to patch your own DSDT to use. You can look over mine for reference. Especially in the battery section.


#
## Lenovo T440 ClickPad

I've included a folder that contains the files necessary for implementing my preferred trackpad configuration after installing the Synaptic One Button Clickpad in my Lenovo ThinkPad T450. I don't recommend using these files unless you have installed the T440 trackpad as well. The configuration can be found at "/Volumes/ESP/EFI/CLOVER/utilities/Trackpad/T440-Clickpad/"

### Instructions:

```
1. Run my ".command" file to make changes automatically. 
```

### Manual Install:

```
1. Replace the SSDT-VPS2.aml in the folder listed below with SSDT-ASTP.aml.
   - "/Volumes/ESP/EFI/CLOVER/ACPI/patched/"

2. Replace VoodooPS2controller.kext in the following 3 folders listed below with ApplePS2SmartTouchpad.kext.
   - "/Library/Extensions/"
   - "/Volumes/ESP/EFI/CLOVER/kexts/Other/"
   - "/Volumes/ESP/EFI/CLOVER/kexts/System/" 

3. Run the !kextcache.command script (requires admin password).
```

#
## Utilities 

Some binaries and other tools for use with the system. 
