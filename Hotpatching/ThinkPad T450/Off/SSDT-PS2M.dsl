// Lenovo ThinkPad T450 Ultrabook | Hackintosh Build (macOS Mojave) | Build By: Jsassu20 (James Sassu) | May 2nd 2019...
//
// Clover UEFI Hotpatch | TrackPad & TrackPoint Configuration...
//
// This Configuration Defines The TrackPad Controller And Enables Apple Trackpad Options In Settings...
//
#ifndef NO_DEFINITIONBLOCK
//DefinitionBlock("", "SSDT", 2, "TP-T450", "_PS2M", 0)
//{
#endif
    External (_SB.PCI0.LPC.PS2M, DeviceObj)
    Scope(_SB.PCI0.LPC.PS2M)
    {
        // Select specific configuration in VoodooPS2Trackpad.kext
        Method(_DSM, 4)
        {
            If (!Arg2) { Return (Buffer() { 0x03 } ) }
            Return (Package()
            {
                "RM,oem-id", "LENOVO",
                "RM,oem-table-id", "Thinkpad_ClickPad",
            })
        }
        // Overrides (the example data here is default in the Info.plist)
        Name(RMCF, Package()
        {
            "Mouse", 
            Package (0x02)
            {
                "ActLikeTrackpad", 
                ">y"
            },
            
            "Keyboard", 
            Package (0x08)
            {
                "ActionSwipeLeft", 
                "37 d, 21 d, 21 u, 37 u", 
                "ActionSwipeRight", 
                "37 d, 1e d, 1e u, 37 u", 
                "SleepPressTime", 
                "1500", 
                "Swap command and option", 
                ">y"
            },  
            
            "Synaptics TouchPad", Package()
            {
                "BogusDeltaThreshX", 800,
                "BogusDeltaThreshY", 800,
                "Clicking", ">y",
                "DragLockTempMask", 0x40004,
                "DynamicEWMode", ">n",
                "FakeMiddleButton", ">n",
                "HWResetOnStart", ">y",
                //"ForcePassThrough", ">y",
                //"SkipPassThrough", ">y",
                "PalmNoAction When Typing", ">y",
                "ScrollResolution", 800,
                "SmoothInput", ">y",
                "UnsmootInput", ">y",
                "Thinkpad", ">y",
                "EdgeBottom", 0,
                "FingerZ", 30,
                "MaxTapTime", 100000000,
                "MomentumScrollThreshY", 32,
                "MouseMultiplierX", 8,
                "MouseMultiplierY", 8,
                "MouseScrollMultiplierX", 8,
                "MouseScrollMultiplierY", 8,
                "TrackpointScrollYMultiplier", 2, //Change this value to 0xFFFF in order to inverse the vertical scroll direction of the Trackpoint when holding the middle mouse button.
                "TrackpointScrollXMultiplier", 2, //Change this value to 0xFFFF in order to inverse the horizontal scroll direction of the Trackpoint when holding the middle mouse button.
            }
        })
    }
#ifndef NO_DEFINITIONBLOCK
//}
#endif
//EOF