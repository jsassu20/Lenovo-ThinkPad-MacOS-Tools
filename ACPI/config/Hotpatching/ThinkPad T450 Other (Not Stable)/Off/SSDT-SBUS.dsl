// Lenovo ThinkPad T450 Ultrabook | Hackintosh Build (macOS Mojave) | Build By: Jsassu20 (James Sassu) | May 2nd 2019...
//
// Clover UEFI Hotpatch | SBUS Device Functionality...
//
// Add Missing SBUS _DSM Info Into DSDT | Patched On The Fly...
//  
// Enable Clover Configurator's ACPI/Patches Option For "change SMBU to SBUS"...
//
#ifndef NO_DEFINITIONBLOCK
//DefinitionBlock("", "SSDT", 2, "TP-T450", "_SBUS", 0x001f0003)
//{
#endif    
    External (_SB.PCI0.SBUS, DeviceObj)
    External (DTGP, MethodObj)
    
    Device (_SB.PCI0.SBUS)
    { 
        Name (_ADR, 0x001f0003)
        Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
        {
            Store (Package (0x1B) {
                "AAPL,slot-name", Buffer() { "Built In" },
                "name", Buffer() { "Apple PCI Express SMBus Controller" }, 
                "model", Buffer() { "Apple PCI Express SMBus Controller (Intel Broadwell Wildcat Point-LP SMBus Controller" }, 
                "device_type", Buffer() { "SMBus" }, 
                "device-id", Buffer() { 0xA2, 0x9C, 0x00, 0x00 }, 
                "vendor-id", Buffer() { 0x86, 0x80, 0x00, 0x00 },  
                "compatible", Buffer() { "pci8086,9ca2" },
                Buffer (One) {0x00}
            }, Local0)
            DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
            Return (Local0)
        }
        
        Device (BUS0)
        {
            Name (_CID, "smbus")
            Name (_ADR, Zero)
            Method (_DSM, 4, NotSerialized)
            {
                If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
                Return (Package() { "address", 0x57 })
            }
        }        
    }
#ifndef NO_DEFINITIONBLOCK
//}
#endif
//EOF