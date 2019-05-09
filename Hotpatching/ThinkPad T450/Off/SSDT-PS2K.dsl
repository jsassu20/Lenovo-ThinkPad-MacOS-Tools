// Lenovo ThinkPad T450 Ultrabook | Hackintosh Build (macOS Mojave) | Build By: Jsassu20 (James Sassu) | May 2nd 2019...
//
// Clover UEFI Hotpatch | Keyboard Function Keys...
//
// This Configuration Fixes Device PS2K_ For The Proper FN Button Mapping...
//
// If This Does Not Work You Can Download Keyboard Maestro And Create The Proper Function Keys Configuration From There...
//
#ifndef NO_DEFINITIONBLOCK
//DefinitionBlock("", "SSDT", 2, "T450", "_PS2K", 0)
//{
#endif
    External (_SB.PCI0.LPC.EC, DeviceObj)
    External (_SB.PCI0.LPC.PS2K, DeviceObj)

    Scope (_SB.PCI0.LPC.EC)
    {
        Method (_Q14, 0, NotSerialized)  // F6 Brightness Up
        {
            
            Notify (PS2K, 0x0206)
            Notify (PS2K, 0x0286)

        }

        Method (_Q15, 0, NotSerialized)  // F5 Brightness Down
        {
            
            Notify (PS2K, 0x0205)
            Notify (PS2K, 0x0285)

        }

        Method (_Q6A, 0, NotSerialized)  // F4 Microphone Mute - Siri (SysPrefs>Siri>Keyboard Shortcut)
        {
            
            Notify (PS2K, 0x0168)
            Notify (PS2K, 0x01E8)

        }

        Method (_Q16, 0, NotSerialized)  // F7 Projector / Mirror Mode
        {
            
            Notify (PS2K, 0x026E)
            Notify (PS2K, 0x02EE)

        }

        Method (_Q64, 0, NotSerialized)  // F8 Wireless ON/OFF - Notification Center (SysPrefs>Keyboard>Shortcuts)
        {
            
            Notify (PS2K, 0x0169)
            Notify (PS2K, 0x01E9)

        }

        Method (_Q66, 0, NotSerialized)  // F9 Settings - System Preferences (SysPrefs>Keyboard>Shortcuts)
        {
            
            Notify (PS2K, 0x0164)
            Notify (PS2K, 0x01E4)

        }

        Method (_Q67, 0, NotSerialized)  //F10 Windows Search (Cortana) - Spotlight Search (SysPrefs>Keyboard>Shortcuts)
        {
            
            Notify (PS2K, 0x0165)
            Notify (PS2K, 0x01E5)

        }

        Method (_Q68, 0, NotSerialized)  //F18 ALT+TAB Menu - Mission Control (SysPrefs>Keyboard>Shortcuts)
        {
            
            Notify (PS2K, 0x0166)
            Notify (PS2K, 0x01E6)

        }

        Method (_Q69, 0, NotSerialized)  // Win Key Start Menu - Launchpad (SysPrefs>Keyboard>Shortcuts)
        {
            
            Notify (PS2K, 0x0167)
            Notify (PS2K, 0x01E7)

        }
    }
#ifndef NO_DEFINITIONBLOCK
//}
#endif
//EOF