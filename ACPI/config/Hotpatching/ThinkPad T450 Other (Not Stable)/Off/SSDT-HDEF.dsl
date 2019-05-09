// Lenovo ThinkPad T450 Ultrabook | Hackintosh Build (macOS Mojave) | Build By: Jsassu20 (James Sassu) | May 2nd 2019...
//
// Clover UEFI Hotpatch | Configuration For System Sound Functionality...
//
// Automatic Injection Of HDEF Layout Properties (System Audio Functionality) | Only Use Layout 28 | 1C000000 | Also Injects _DSM Info Under System Information...
//
#ifndef NO_DEFINITIONBLOCK
//DefinitionBlock("", "SSDT", 2, "TP-T450", "_HDEF", 0x001b0000)
//{
#endif
    External(_SB.PCI0.HDEF, DeviceObj)
    External(RMCF.AUDL, IntObj)

    // inject properties for audio
    Method(_SB.PCI0.HDEF._DSM, 4)
    {
        If (CondRefOf(\RMCF.AUDL)) { If (Ones == \RMCF.AUDL) { Return(0) } }
        If (!Arg2) { Return (Buffer() { 0x03 } ) }
        Local0 = Package()
        {
            "layout-id", Buffer() { 2, 0, 0, 0 },
            "hda-gfx", Buffer() { "onboard-1" },
            "AAPL,slot-name", Buffer() { "Built In" },
            "codec-id", Buffer() { 0x92, 0x02, 0xEC, 0x10 },
            "name", Buffer() { "Realtek ALC3232 High Definition Audio Controller" },
            "model", Buffer() { "Realtek ALC3232 High Definition Audio (Intel Broadwell Wildcat Point-LP HD Audio Controller)" },
            "device_type", Buffer() { "Audio Device" },
            "device-id", Buffer() { 0x92, 0x02, 0x00, 0x00 },
            "vendor-id", Buffer() { 0xEC, 0x10, 0x00, 0x00 },
            "built-in", Buffer() { 0x00 },
            "PinConfigurations", Buffer() { },
            //"MaximumBootBeepVolume", 77,
            Buffer (One) {0x00}
        }
        If (CondRefOf(\RMCF.AUDL))
        {
            CreateDWordField(DerefOf(Local0[1]), 0, AUDL)
            AUDL = \RMCF.AUDL
        }
        Return(Local0)
    }
#ifndef NO_DEFINITIONBLOCK
//}
#endif
//EOF