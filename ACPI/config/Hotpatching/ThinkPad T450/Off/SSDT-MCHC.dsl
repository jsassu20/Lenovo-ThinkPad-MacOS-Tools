// Lenovo ThinkPad T450 Ultrabook | Hackintosh Build (macOS Mojave) | Build By: Jsassu20 (James Sassu) | May 2nd 2019...
//
// Clover UEFI Hotpatch | MCHC Device _DSM Injection...
//
// This Configuration Injects The Proper _DSM Info For The MCHC Controller | This Is The Main PCI Express Bridge...
//
#ifndef NO_DEFINITIONBLOCK
//DefinitionBlock ("", "SSDT", 2, "TP-T450", "_MCHC", 0x00000000)
//{
#endif
    External (_SB_.PCI0, DeviceObj)  // (from opcode)
    External (DTGP, MethodObj)
    
    Method (_SB.PCI0._DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
    {
        Store (Package (0x0F) {
            "AAPL,slot-name", Buffer() { "Built In" },
            "name", Buffer() { "Apple PCI Express MCHC Bridge" }, 
            "model", Buffer() { "Apple PCI Express MCHC Bridge (Intel Broadwell Wildcat Point-LP Host Bridge)" }, 
            "device_type", Buffer() { "PCIe Host" }, 
            "device-id", Buffer() { 0x04, 0x16, 0x00, 0x00 }, 
            "vendor-id", Buffer() { 0x86, 0x80, 0x00, 0x00 },  
            "compatible", Buffer() { "pci8086,1604" },
            Buffer (One) {0x00}
        }, Local0)
        DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
        Return (Local0)
    }
#ifndef NO_DEFINITIONBLOCK
//}
#endif
//EOF