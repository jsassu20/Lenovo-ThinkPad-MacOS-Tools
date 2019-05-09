// Lenovo ThinkPad T450 Ultrabook | Hackintosh Build (macOS Mojave) | Build By: Jsassu20 (James Sassu) | May 2nd 2019...
//
// Clover UEFI Hotpatch | Enables CPU Power Management...
//
// Automatic CPU Power Management Through Plugin Type One Injection In SSDT For Instead Of Using Clover Configurator...
//
//DefinitionBlock ("", "SSDT", 1, "TP-T450", "_XCPM", 0x00003000)
//{   
    External (_PR_.CPU0, DeviceObj)    // (from opcode)

    Scope (\_PR.CPU0)
    {
        Method (_DSM, 4)  // _DSM: Device-Specific Method
        {
            Store ("Writing plugin-type to Registry!", Debug)
            If (LEqual (Arg2, Zero))
            {
                Return (Buffer (One)
                {
                     0x03                                           
                })
            }

            Return (Package (0x02)
            {
                "plugin-type", 
                One
            })
        }
    }
//}
//EOF
