<img width="1676" height="726" alt="Screenshot 2025-11-23 104816" src="https://github.com/user-attachments/assets/df7d1b46-c23e-4455-bb20-f65ea03fc12d" />

🖥️ Proteus Gate-Level Implementation
The Proteus design implements SRAM using fundamental logic gates and SR latches, showing exactly how memory stores bits at the hardware level.
Key Components:

SR Latches — core storage element for each bit cell
Word Lines — horizontal lines selecting a memory row via address decoder
Bit Lines — vertical lines carrying read/write data
Address Decoder — 3-to-8 decoder selecting one of 8 rows
Data Bus — 8-bit wide input/output lines

How to Open:

Install Proteus 8.x
Open Proteus/SRAM_8x8.pdsprj
Run simulation and toggle input signals to test Read/Write


📊 Memory Map
Address │ D7  D6  D5  D4  D3  D2  D1  D0
────────┼────────────────────────────────
  000   │  x   x   x   x   x   x   x   x
  001   │  x   x   x   x   x   x   x   x
  010   │  x   x   x   x   x   x   x   x
  011   │  x   x   x   x   x   x   x   x
  100   │  x   x   x   x   x   x   x   x
  101   │  x   x   x   x   x   x   x   x
  110   │  x   x   x   x   x   x   x   x
  111   │  x   x   x   x   x   x   x   x

⚡ SRAM vs Other Memory Types
FeatureThis Project (SRAM)DRAMBRAM (FPGA)FlashStorage ElementLatch / Flip-FlopCapacitorFlip-FlopFloating GateNeeds Refresh❌ No✅ Yes❌ No❌ NoSpeedFastSlowerFastSlowVolatile✅ Yes✅ Yes✅ Yes❌ NoBuilt in Proteus✅ Yes❌ Rarely❌ FPGA only❌

🛠️ Tools Used
ToolPurposeProteus 8.xGate-level circuit simulationSystemVerilogRTL hardware descriptionVivado / ModelSimSynthesis & simulation

🚀 How to Run
Proteus Simulation
1. Open Proteus 8.x
2. Load SRAM_8x8.pdsprj
3. Press Play to simulate
4. Toggle WE, address, and data inputs
SystemVerilog Simulation (ModelSim)
bashvlog RAM_2_port.sv RAM_2_port_tb.sv
vsim RAM_2_port_tb
run -all
SystemVerilog Simulation (Vivado)
1. Create new project in Vivado
2. Add RAM_2_port.sv as design source
3. Add RAM_2_port_tb.sv as simulation source
4. Run Behavioral Simulation

💡 What I Learned

How SRAM bit cells store data using cross-coupled inverters/latches
The relationship between address decoding, word lines, and bit lines
Difference between gate-level and RTL abstraction
How a 2-port memory allows simultaneous read and write
Writing synthesizable SystemVerilog for memory design

