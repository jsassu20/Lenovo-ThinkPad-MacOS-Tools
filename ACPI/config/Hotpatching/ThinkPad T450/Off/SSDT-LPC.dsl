// Lenovo ThinkPad T450 Ultrabook | Hackintosh Build (macOS Mojave) | Build By: Jsassu20 (James Sassu) | May 2nd 2019...
//
// Clover UEFI Hotpatch | Proper AppleLPC _DSM Injection...
//
// Leave LPC_ Device Alone In DSDT And Clover Configurator's ACPI/Patches Section | DO NOT RENAME IT...
//
#ifndef NO_DEFINITIONBLOCK
//DefinitionBlock ("", "SSDT", 2, "TP-T450", "_LPC", 0x001f0000)
//{
#endif
    External (_SB_.PCI0.LPC, DeviceObj)    // (from opcode)
    External (DTGP, MethodObj)
    
    Method (_SB.PCI0.LPC._DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
    {
        Store (Package (0x0F) {
            "AAPL,slot-name", Buffer() { "Built In" },
            "name", Buffer() { "Apple LPC Power Bus Controller" }, 
            "model", Buffer() { "Apple PCI Express ISA Bridge (Inte Broadwell Wildcat Point-LP LPC Controller)" }, 
            "device_type", Buffer() { "ISA Bridge" }, 
            "device-id", Buffer() { 0xC3, 0x9C, 0x00, 0x00 }, 
            "vendor-id", Buffer() { 0x86, 0x80, 0x00, 0x00 },  
            "compatible", Buffer() { "pci8086,9cc3" },
            Buffer (One) {0x00}
        }, Local0)
        DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
        Return (Local0)
    }
#ifndef NO_DEFINITIONBLOCK
//}
#endif
//EOF
