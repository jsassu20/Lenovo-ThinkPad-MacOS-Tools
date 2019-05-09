// Lenovo ThinkPad T450 Ultrabook | Hackintosh Build (macOS Mojave) | Build By: Jsassu20 (James Sassu) | May 2nd 2019...
//
// Clover UEFI Hotpatch | Adds Fake Ambient Sensor To DSDT...
//
// This Configuration Adds The Missing DSDT DeviceObj ALS0 | Hardware Entry For The Ambient Light Sensors To Be Able To Function Properly...
//
// Fixes Issues With System Functions Like Sleep/Wake | As Well As Screen Brightness...
//
#ifndef NO_DEFINITIONBLOCK
//DefinitionBlock("", "SSDT", 2, "TP-T450", "_ALS0", 0)
//{
#endif
    Device(_SB.ALS0)
    {
        Name(_HID, "ACPI0008")
        Name(_CID, "smc-als")
        Name(_ALI, 300)
        Name(_ALR, Package()
        {
            //Package() { 70, 0 },
            //Package() { 73, 10 },
            //Package() { 85, 80 },
            Package() { 100, 300 },
            //Package() { 150, 1000 },
        })
    }
#ifndef NO_DEFINITIONBLOCK
//}
#endif
//EOF