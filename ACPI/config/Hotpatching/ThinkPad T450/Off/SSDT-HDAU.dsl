// Lenovo ThinkPad T450 Ultrabook | Hackintosh Build (macOS Mojave) | Build By: Jsassu20 (James Sassu) | May 2nd 2019...
//
// Clover UEFI Hotpatch | HDMI Audio Out (Mini Display Port) Configuration...
//
// Automatic Injection Of HDAU Layout Properties (For HDMI Audio Functionality) | Only for Haswell and Broadwell | | Only Use Layout 28 (1C000000)...
//
#ifndef NO_DEFINITIONBLOCK
//DefinitionBlock("", "SSDT", 2, "TP-T450", "_HDAU", 0x00030000)
//{
#endif
    External(_SB.PCI0.HDAU, DeviceObj)
    External(RMCF.AUDL, IntObj)

    // inject properties for audio
    Method(_SB.PCI0.HDAU._DSM, 4)
    {
        If (CondRefOf(\RMCF.AUDL)) { If (Ones == \RMCF.AUDL) { Return(0) } }
        If (!Arg2) { Return (Buffer() { 0x03 } ) }
        Local0 = Package()
        {
            "layout-id", Buffer() { 2, 0, 0, 0 },
            "hda-gfx", Buffer() { "onboard-1" },
            "AAPL,slot-name", Buffer() { "Built In" },
            "model", Buffer() { "Apple High Definition Audio Controller (Intel Broadwell-U HDMI Audio Controller)" },
            "device_type", Buffer() { "Audio Device" },
            "device-id", Buffer() { 0x0C, 0x16, 0x00, 0x00 },
            "vendor-id", Buffer() { 0x86, 0x80, 0x00, 0x00 },
            "compatible", Buffer() { "pci8086,160c" },
            "built-in", Buffer() { 0x00 },
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