![Screenshot](Misc/logo/screenshot.png)

# Lenovo-T450-Hackintosh-Tools

This repository will hold the tools and scripts I personally use for my own setup but you're free to use as well. The applications that can be found here are not my creation nor do I take any sort of credit for the benefits they provide in the Hackintosh community. All credit for the abilities they provide should go directly to the creators of each app which can be found in the "About this app" section of the applications info.


* ACPI - My current ACPI folder in Clover. Holds my Hotpatched SSDT.

* Applications: Consists of different applications that I find to be useful for the hackintosh process after installing. The basically give you a good amount of options for solving different issues you may run into along with providing a number of usefull options for maintaining and keeping up on regular maintainence in order to keep your build running.

     Notable Applications:
     
	 - Hackintool - Probably the most useful application next to clover configurator. Provides you with and unprecedented amount of control over your system as well as a number of tools for solving a wide range of issues you'll face along the way.
	 
	 - Clover Configurator - Tool for configuring Clover's config.plist which is the central point for your systems functionality. There is no better application for handling the Hackintosh systems functionality.
	 
	 - EFI Mounter - Personally I love this app. It gives you the ability to mount your EFI folder which is where Clover lives and it also can mount the partition automatically on startup which I love.
	 
	 - GateKeeper Disabler - Gives you a method for disabling GateKeeper which is a mac feature that prevents you from loading 3rd party applications without right clicking the app and selecting open from the pop up menu.
	 
	 - Folders - Allows you to download an already configured Clover folder for certain systems.
	 
	 - Kext Updater - Allows you to be able to update all of your kernel extensions to the latest available versions.
	 
	 - Kext Helper B7 - Awesome utility for isntalling kernel extensions to the system and repairing the kernelcache.

* ALC3232 - Everything needed to create a patched AppleHDA kext which controls system sound. This is the Codec configuration that the T450 uses. This kext will provide you with a perfectly configured sound setup with Microphone and AUX working. You can use AppleALC as an alternative but I found that Mic and Aux usage is terrible with this method in Mojave so I use this now. I got it from TonyMacX86 from a guy who did the Lenovo L440 configuration I believe his name is Snider or something like that. All credit goes to him for this.

* Configurations - A config.plist for my Static and Hotpatched setups which I built.

* HD Graphics 5500 - An old method for configuring DVMT pre allocated memory if your system is stuck at 32MB in the BIOS. I personally have an unlocked BIOS so I can change mine to whatever now. I reccomend unlocking you BIOS which can be done from BIOS-Mods.com along with an SPI programmer and a clip.

* Hotpatching _ All of my files for the T450 Hotpatch method. Should work with pretty much all Broadwell setups with slight modifications.

* Kexts - The kext fils I use along with the scripts for installing them directly to the system (/Library/Extensions). You have your normal clover kext folder along with the required system kexts in place. Just run the script to install.

* maciASL Patches - Different patches for maciASL (static patching DSDT)

* Static Patching - My T450 Static patch method. This should only be used with T450s and may not work. The SSDTs are universal but you may have to patch your own DSDT to use. You can look over mine for reference. Especially in the battery section.

* Utilities - Some binararies and other tools for use with the system. 
