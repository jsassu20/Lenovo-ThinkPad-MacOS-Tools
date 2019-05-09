// Lenovo ThinkPad T450 Ultrabook | Hackintosh Build (macOS Mojave) | Build By: Jsassu20 (James Sassu) | May 2nd 2019...
//
// Clover UEFI Hotpatch | Adds IMEI Device To DSDT And Injects _DSM Info...
//
// Adds Missing IMEI DeviceObj Into DSDT And Injects _DSM Info | Patched On The Fly | Fixes Issues With iTunes Store and macOS App Store DRM Verification...
//  
// Enable Clover Configurator's ACPI/Patches Option For "change MEI to IMEI"...
//
#ifndef NO_DEFINITIONBLOCK
//DefinitionBlock("", "SSDT", 2, "TP-T450", "_IMEI", 0x00160000)
//{
#endif
    External (_SB.PCI0, DeviceObj)
    External (_SB.PCI0.IMEI, DeviceObj)
    External (DTGP, MethodObj)
    
    Device (_SB.PCI0)
    {
        Name (_ADR, 0x00000000)
        Device (IMEI)
        {
            Name (_ADR, 0x00160000)  // _ADR: Address
            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                Store (Package (0x0F) {
                    "AAPL,slot-name", Buffer() { "Built In" },
                    "name", Buffer() { "Apple PCI Express Communications DRM Controller" }, 
                    "model", Buffer() { "Apple PCI Express Communications Controller (Intel Broadwell Wildcat Point-LP IMEI DRM Controller)" }, 
                    "device_type", Buffer() { "MEI Controller" }, 
                    "device-id", Buffer() { 0xBA, 0x9C, 0x00, 0x00 }, 
                    "vendor-id", Buffer() { 0x86, 0x80, 0x00, 0x00 },  
                    "compatible", Buffer() { "pci8086,9cba" },
                    Buffer (One) {0x00}
                }, Local0)
                DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
                Return (Local0)
            }
        }
    }
#ifndef NO_DEFINITIONBLOCK
//}
#endif
//EOF