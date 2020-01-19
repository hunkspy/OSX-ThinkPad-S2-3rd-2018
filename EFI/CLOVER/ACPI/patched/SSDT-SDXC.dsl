DefinitionBlock ("", "SSDT", 2, "LENOVO", "SDXC", 0x00000000)
{
    External (_SB_.PCI0.RP09.SDXC, DeviceObj)
    Device (_SB.PCI0.RP09.SDXC)
    {
        Name (_ADR, 0x00000000)
        Method (_DSM, 4, NotSerialized)
		{
			If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
			Return (Package ()
			{
				"name", Buffer() { "Apple Internal SDXC Memory Card Reader" },
                 "model", Buffer () { "RTS522A PCI Express Card Reader" },
				"device_type", Buffer() { "Card Reader" },
				"AAPL,slot-name", Buffer () { "Internal@0,29,0/0,0" },
                 "device-id", Buffer() { 0x2A, 0x52, 0x00, 0x00 }, 
                 "vendor-id", Buffer() { 0xEC, 0x10, 0x00, 0x00 },  
                 "compatible", Buffer() { "pci10ec,522a" }
			})
		}        
    }
}
