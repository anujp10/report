var areaJSON={"columns":["", "ALUTs", "FFs", "RAMs", "DSPs", "MLABs", "Details"], "debug_enabled":"true", "type":"module", "total_percent":[43.5413, 22.5791, 22.2997, 22.4843, 8.10277], "total":[192096, 381057, 610, 123, 41], "name":"Kernel System", "max_resources":[854400, 1708800, 2713, 1518, 42720], "children":[{"name":"Static Partition", "type":"partition", "children":[{"name":"Board interface", "type":"resource", "data":[179950, 358572, 492, 123, 0], "details":[{"type":"text", "text":"Platform interface logic."}]}]}, {"name":"Global interconnect", "type":"resource", "data":[8779, 12545, 78, 0, 0], "details":[{"type":"text", "text":"Global interconnect for 2 global loads and 1 global store. Reduce number of global loads and stores to simplify global interconnect."}, {"type":"brief", "text":"For 2 global loads and 1 global store."}, {"type":"text", "text":"See %L for more information", "links":[{"guide":"Best Practices Guide : Global Memory Interconnect", "link":"file:////glob/development-tools/versions/oneapi/gold/inteloneapi/compiler/2021.1.2/linux/lib/oclfpga/aoc_help_pages/hnj1476724450050.html"}]}]}, {"name":"System description ROM", "type":"resource", "data":[0, 67, 2, 0, 0], "details":[{"type":"text", "text":"This read-only memory contains information for the host about the system and about each kernel in the system, including kernel names, arguments, and attributes. The system description ROM ensures that the binary image on the FPGA is compatible with the host program."}, {"type":"brief", "text":"Contains information for the host."}]}, {"name":"VectorAdd", "compute_units":1, "type":"function", "total_percent":[1.04817, 0.490052, 0.577774, 1.40066, 0], "total_kernel_resources":[3367, 9873, 38, 0, 41], "details":[{"type":"text", "text":"Number of compute units: 1"}, {"type":"brief", "text":"1 compute unit."}], "children":[{"name":"Function overhead", "type":"resource", "data":[1338, 2411, 0, 0, 10], "details":[{"type":"text", "text":"Kernel dispatch logic."}, {"type":"brief", "text":"Kernel dispatch logic."}]}, {"name":"Private Variable: \\n - \'i\' (fpga_compile.cpp:76)", "type":"resource", "data":[76, 308, 0, 0, 0], "debug":[[{"filename":"fpga_compile.cpp", "line":76}]], "details":[{"type":"text", "text":"Type: Register"}, {"type":"text", "text":"1 register of width 15 bits and depth 4", "details":[{"type":"text", "text":" Depth was increased by a factor of 280 due to a loop initiation interval of 280."}]}, {"type":"text", "text":"1 register of width 32 bits and depth 4", "details":[{"type":"text", "text":" Depth was increased by a factor of 280 due to a loop initiation interval of 280."}]}, {"type":"brief", "text":"Register,\\n1 reg, 15 width by 4 depth,\\n1 reg, 32 width by 4 depth"}]}, {"name":"VectorAdd.B0", "type":"basicblock", "children":[{"name":"Feedback", "type":"resource", "data":[8, 2, 0, 0, 0], "details":[{"type":"brief", "text":"Loop-carried dependencies"}, {"type":"text", "text":"Resources for loop-carried dependencies. To reduce this area:", "details":[{"type":"text", "text":"reduce number and size of loop-carried variables"}]}], "children":[{"name":"No Source Line", "type":"resource", "data":[8, 2, 0, 0, 0]}]}]}, {"name":"VectorAdd.B1", "type":"basicblock", "children":[{"name":"State", "type":"resource", "data":[174, 187, 7, 0, 0], "details":[{"type":"brief", "text":"Live values and control logic"}, {"type":"text", "text":"Resources for live values and control logic. To reduce this area:", "details":[{"type":"text", "text":"reduce size of local variables"}, {"type":"text", "text":"reduce scope of local variables, localizing them as much as possible"}, {"type":"text", "text":"reduce number of nested loops"}]}], "children":[{"name":"No Source Line", "type":"resource", "data":[174, 187, 7, 0, 0]}]}, {"name":"Feedback", "type":"resource", "data":[303, 639, 0, 0, 0], "details":[{"type":"brief", "text":"Loop-carried dependencies"}, {"type":"text", "text":"Resources for loop-carried dependencies. To reduce this area:", "details":[{"type":"text", "text":"reduce number and size of loop-carried variables"}]}], "children":[{"name":"fpga_compile.cpp:76", "type":"resource", "data":[282, 625, 0, 0, 0], "debug":[[{"filename":"/home/u58822/One-API/oneAPI-samples/DirectProgramming/DPC++FPGA/Tutorials/GettingStarted/fpga_compile/build/src/fpga_compile.cpp", "line":76}]]}, {"name":"fpga_compile.cpp:77", "type":"resource", "data":[21, 14, 0, 0, 0], "debug":[[{"filename":"/home/u58822/One-API/oneAPI-samples/DirectProgramming/DPC++FPGA/Tutorials/GettingStarted/fpga_compile/build/src/fpga_compile.cpp", "line":77}]]}]}, {"name":"Computation", "type":"resource", "children":[{"name":"fpga_compile.cpp:76", "type":"resource", "data":[21, 2, 0, 0, 0], "debug":[[{"filename":"/home/u58822/One-API/oneAPI-samples/DirectProgramming/DPC++FPGA/Tutorials/GettingStarted/fpga_compile/build/src/fpga_compile.cpp", "line":76}]], "children":[{"name":"1-bit And", "type":"resource", "count":1, "data":[1, 0, 0, 0, 0]}, {"name":"1-bit Or", "type":"resource", "count":1, "data":[1, 0, 0, 0, 0]}, {"name":"15-bit Integer Compare", "type":"resource", "count":1, "data":[5, 0, 0, 0, 0]}, {"name":"4-bit Select", "type":"resource", "count":1, "data":[4, 0, 0, 0, 0]}, {"name":"Iteration Initiation", "type":"resource", "count":1, "data":[10, 2, 0, 0, 0]}], "replace_name":"true"}, {"name":"fpga_compile.cpp:77", "type":"resource", "data":[1442, 6316, 31, 0, 31], "debug":[[{"filename":"/home/u58822/One-API/oneAPI-samples/DirectProgramming/DPC++FPGA/Tutorials/GettingStarted/fpga_compile/build/src/fpga_compile.cpp", "line":77}]], "children":[{"name":"32-bit Integer Add", "type":"resource", "count":1, "data":[32, 0, 0, 0, 0]}, {"name":"Load", "type":"resource", "count":2, "data":[1008, 4100, 30, 0, 0], "details":[{"type":"text", "text":"Load uses a Burst-coalesced LSU"}, {"type":"brief", "text":"Burst-coalesced LSU"}]}, {"name":"Store", "type":"resource", "count":1, "data":[402, 2216, 1, 0, 31], "details":[{"type":"text", "text":"Store uses a Burst-coalesced LSU"}, {"type":"brief", "text":"Burst-coalesced LSU"}]}], "replace_name":"true"}]}]}, {"name":"VectorAdd.B2", "type":"basicblock", "children":[{"name":"Feedback", "type":"resource", "data":[5, 8, 0, 0, 0], "details":[{"type":"brief", "text":"Loop-carried dependencies"}, {"type":"text", "text":"Resources for loop-carried dependencies. To reduce this area:", "details":[{"type":"text", "text":"reduce number and size of loop-carried variables"}]}], "children":[{"name":"No Source Line", "type":"resource", "data":[5, 8, 0, 0, 0]}]}]}]}]};
var area_srcJSON={"children":[{"children":[{"data":[179950,358572,492,123,0],"details":[{"text":"Platform interface logic.","type":"text"}],"name":"Board interface","type":"resource"}],"name":"Static Partition","type":"partition"},{"data":[8779,12545,78,0,0],"details":[{"text":"Global interconnect for 2 global loads and 1 global store. Reduce number of global loads and stores to simplify global interconnect.","type":"text"},{"text":"For 2 global loads and 1 global store.","type":"brief"},{"links":[{"guide":"Best Practices Guide : Global Memory Interconnect","link":"file:////glob/development-tools/versions/oneapi/gold/inteloneapi/compiler/2021.1.2/linux/lib/oclfpga/aoc_help_pages/hnj1476724450050.html"}],"text":"See %L for more information","type":"text"}],"name":"Global interconnect","type":"resource"},{"data":[0,67,2,0,0],"details":[{"text":"This read-only memory contains information for the host about the system and about each kernel in the system, including kernel names, arguments, and attributes. The system description ROM ensures that the binary image on the FPGA is compatible with the host program.","type":"text"},{"text":"Contains information for the host.","type":"brief"}],"name":"System description ROM","type":"resource"},{"children":[{"data":[316,649,0,0,0],"details":[{"text":"Feedback+Cluster logic","type":"brief"}],"name":"Data control overhead","type":"resource"},{"data":[1338,2411,0,0,10],"details":[{"text":"Kernel dispatch logic.","type":"text"},{"text":"Kernel dispatch logic.","type":"brief"}],"name":"Function overhead","type":"resource"},{"data":[76,308,0,0,0],"details":[{"text":"Type: Register","type":"text"},{"details":[{"text":" Depth was increased by a factor of 280 due to a loop initiation interval of 280.","type":"text"}],"text":"1 register of width 15 bits and depth 4","type":"text"},{"details":[{"text":" Depth was increased by a factor of 280 due to a loop initiation interval of 280.","type":"text"}],"text":"1 register of width 32 bits and depth 4","type":"text"},{"text":"Register,\\n1 reg, 15 width by 4 depth,\\n1 reg, 32 width by 4 depth","type":"brief"}],"name":"Private Variable: \\n - \'i\' (fpga_compile.cpp:76)","type":"resource"},{"children":[{"count":"1","data":[174,187,7,0,0],"debug":[[{"filename":"","line":0}]],"name":"State","type":"resource"}],"data":[174,187,7,0,0],"name":"No Source Line","type":"resource"},{"children":[{"count":1,"data":[1,0,0,0,0],"debug":[[{"filename":"/home/u58822/One-API/oneAPI-samples/DirectProgramming/DPC++FPGA/Tutorials/GettingStarted/fpga_compile/build/src/fpga_compile.cpp","line":"76"}]],"name":"1-bit And","type":"resource"},{"count":1,"data":[1,0,0,0,0],"debug":[[{"filename":"/home/u58822/One-API/oneAPI-samples/DirectProgramming/DPC++FPGA/Tutorials/GettingStarted/fpga_compile/build/src/fpga_compile.cpp","line":"76"}]],"name":"1-bit Or","type":"resource"},{"count":1,"data":[5,0,0,0,0],"debug":[[{"filename":"/home/u58822/One-API/oneAPI-samples/DirectProgramming/DPC++FPGA/Tutorials/GettingStarted/fpga_compile/build/src/fpga_compile.cpp","line":"76"}]],"name":"15-bit Integer Compare","type":"resource"},{"count":1,"data":[4,0,0,0,0],"debug":[[{"filename":"/home/u58822/One-API/oneAPI-samples/DirectProgramming/DPC++FPGA/Tutorials/GettingStarted/fpga_compile/build/src/fpga_compile.cpp","line":"76"}]],"name":"4-bit Select","type":"resource"},{"count":1,"data":[10,2,0,0,0],"debug":[[{"filename":"/home/u58822/One-API/oneAPI-samples/DirectProgramming/DPC++FPGA/Tutorials/GettingStarted/fpga_compile/build/src/fpga_compile.cpp","line":"76"}]],"name":"Iteration Initiation","type":"resource"}],"data":[21,2,0,0,0],"debug":[[{"filename":"/home/u58822/One-API/oneAPI-samples/DirectProgramming/DPC++FPGA/Tutorials/GettingStarted/fpga_compile/build/src/fpga_compile.cpp","line":76}]],"name":"/home/u58822/One-API/oneAPI-samples/DirectProgramming/DPC++FPGA/Tutorials/GettingStarted/fpga_compile/build/src/fpga_compile.cpp:76","replace_name":"true","type":"resource"},{"children":[{"count":1,"data":[32,0,0,0,0],"debug":[[{"filename":"/home/u58822/One-API/oneAPI-samples/DirectProgramming/DPC++FPGA/Tutorials/GettingStarted/fpga_compile/build/src/fpga_compile.cpp","line":"77"}]],"name":"32-bit Integer Add","type":"resource"},{"count":2,"data":[1008,4100,30,0,0],"debug":[[{"filename":"/home/u58822/One-API/oneAPI-samples/DirectProgramming/DPC++FPGA/Tutorials/GettingStarted/fpga_compile/build/src/fpga_compile.cpp","line":"77"}]],"name":"Load","type":"resource"},{"count":1,"data":[402,2216,1,0,31],"debug":[[{"filename":"/home/u58822/One-API/oneAPI-samples/DirectProgramming/DPC++FPGA/Tutorials/GettingStarted/fpga_compile/build/src/fpga_compile.cpp","line":"77"}]],"name":"Store","type":"resource"}],"data":[1442,6316,31,0,31],"debug":[[{"filename":"/home/u58822/One-API/oneAPI-samples/DirectProgramming/DPC++FPGA/Tutorials/GettingStarted/fpga_compile/build/src/fpga_compile.cpp","line":77}]],"name":"/home/u58822/One-API/oneAPI-samples/DirectProgramming/DPC++FPGA/Tutorials/GettingStarted/fpga_compile/build/src/fpga_compile.cpp:77","replace_name":"true","type":"resource"}],"compute_units":1,"data":[3367,9873,38,0,41],"debug":[[{"filename":"fpga_compile.cpp","line":76}]],"details":[{"text":"Number of compute units: 1","type":"text"},{"text":"1 compute unit.","type":"brief"}],"name":"VectorAdd","total_kernel_resources":[3367,9873,38,0,41],"total_percent":[1.04817,0.490052,0.577774,1.40066,0],"type":"function"}],"columns":["","ALUTs","FFs","RAMs","DSPs","MLABs","Details"],"data":[12146,22485,118,0,41],"debug_enabled":"true","max_resources":[854400,1708800,2713,1518,42720],"name":"Kernel System","total":[192096,381057,610,123,41],"total_percent":[43.5413,22.5791,22.2997,22.4843,8.10277],"type":"module"};
var mavJSON={"nodes":[{"type":"kernel", "id":2, "name":"VectorAdd", "children":[{"type":"bb", "id":3, "name":"VectorAdd.B0", "details":[{"type":"table", "Latency":"2"}]}, {"type":"bb", "id":4, "name":"VectorAdd.B1", "children":[{"type":"inst", "id":6, "name":"Load", "debug":[[{"filename":"/home/u58822/One-API/oneAPI-samples/DirectProgramming/DPC++FPGA/Tutorials/GettingStarted/fpga_compile/build/src/fpga_compile.cpp", "line":77}]], "details":[{"type":"table", "Width":"32 bits", "Type":"Burst-coalesced", "Stall-free":"No", "Start Cycle":"2", "Latency":"222", "Reference":[{"type":"text", "text":"See %L for more information", "links":[{"guide":"Best Practices Guide : Load-Store Units", "link":"file:////glob/development-tools/versions/oneapi/gold/inteloneapi/compiler/2021.1.2/linux/lib/oclfpga/aoc_help_pages/yeo1491314105959.html"}]}]}]}, {"type":"inst", "id":7, "name":"Load", "debug":[[{"filename":"/home/u58822/One-API/oneAPI-samples/DirectProgramming/DPC++FPGA/Tutorials/GettingStarted/fpga_compile/build/src/fpga_compile.cpp", "line":77}]], "details":[{"type":"table", "Width":"32 bits", "Type":"Burst-coalesced", "Stall-free":"No", "Start Cycle":"2", "Latency":"222", "Reference":[{"type":"text", "text":"See %L for more information", "links":[{"guide":"Best Practices Guide : Load-Store Units", "link":"file:////glob/development-tools/versions/oneapi/gold/inteloneapi/compiler/2021.1.2/linux/lib/oclfpga/aoc_help_pages/yeo1491314105959.html"}]}]}]}, {"type":"inst", "id":8, "name":"Store", "debug":[[{"filename":"/home/u58822/One-API/oneAPI-samples/DirectProgramming/DPC++FPGA/Tutorials/GettingStarted/fpga_compile/build/src/fpga_compile.cpp", "line":77}]], "details":[{"type":"table", "Width":"32 bits", "Type":"Burst-coalesced", "Stall-free":"No", "Start Cycle":"225", "Latency":"56", "Reference":[{"type":"text", "text":"See %L for more information", "links":[{"guide":"Best Practices Guide : Load-Store Units", "link":"file:////glob/development-tools/versions/oneapi/gold/inteloneapi/compiler/2021.1.2/linux/lib/oclfpga/aoc_help_pages/yeo1491314105959.html"}]}]}]}, {"type":"inst", "id":9, "name":"Loop Input", "debug":[[{"filename":"/home/u58822/One-API/oneAPI-samples/DirectProgramming/DPC++FPGA/Tutorials/GettingStarted/fpga_compile/build/src/fpga_compile.cpp", "line":76}]], "details":[{"type":"table", "Start Cycle":"0", "Latency":"1", "Loops To":"10"}]}, {"type":"inst", "id":10, "name":"Loop End", "details":[{"type":"table", "Start Cycle":"281", "Latency":"1"}]}], "details":[{"type":"table", "Latency":"281", "II":"280", "Subloops":"No", "Pipelined":"Yes", "Fmax Bottlenecks":"No", "Loop Info":"Loop is pipelined with II of 280. See Loops Analysis for more information."}]}, {"type":"bb", "id":5, "name":"VectorAdd.B2", "details":[{"type":"table", "Latency":"0"}]}]}, {"type":"memtype", "id":1, "name":"Global Memory", "children":[{"type":"memsys", "id":11, "name":"DDR", "details":[{"type":"table", "Number of banks":"2"}]}]}], "links":[{"from":10, "to":9}, {"from":3, "to":9}, {"from":8, "to":10}, {"from":6, "to":10}, {"from":7, "to":10}, {"from":10, "to":5}, {"from":9, "to":6}, {"from":9, "to":7}, {"from":6, "to":8}, {"from":7, "to":8}, {"from":11, "to":7}, {"from":8, "to":11}, {"from":11, "to":6}]};
var loopsJSON={"columns":["", "Pipelined", "II", "Speculated iterations", "Details"], "children":[{"name":"Kernel: VectorAdd", "data":["", "", ""], "debug":[[{"filename":"/home/u58822/One-API/oneAPI-samples/DirectProgramming/DPC++FPGA/Tutorials/GettingStarted/fpga_compile/build/src/fpga_compile.cpp", "line":75}]], "details":[{"type":"brief", "text":"Single work-item execution"}, {"type":"text", "text":"Single work-item execution"}, {"type":"text", "text":"Fmax bottlenck block: None"}, {"type":"text", "text":"See %L for more information", "links":[{"guide":"Best Practices Guide : Kernels", "link":"file:////glob/development-tools/versions/oneapi/gold/inteloneapi/compiler/2021.1.2/linux/lib/oclfpga/aoc_help_pages/ipp1476408832230.html"}]}], "children":[{"name":"VectorAdd.B1", "data":["Yes", "~280", "3"], "debug":[[{"filename":"/home/u58822/One-API/oneAPI-samples/DirectProgramming/DPC++FPGA/Tutorials/GettingStarted/fpga_compile/build/src/fpga_compile.cpp", "line":76}]], "details":[{"type":"brief", "text":"Memory dependency"}, {"type":"text", "text":"Compiler failed to schedule this loop with smaller II due to memory dependency:", "details":[{"type":"text", "text":"From: Load Operation (%L)", "links":[{"filename":"/home/u58822/One-API/oneAPI-samples/DirectProgramming/DPC++FPGA/Tutorials/GettingStarted/fpga_compile/build/src/fpga_compile.cpp", "line":"77"}]}, {"type":"text", "text":"To: Store Operation (%L)", "links":[{"filename":"/home/u58822/One-API/oneAPI-samples/DirectProgramming/DPC++FPGA/Tutorials/GettingStarted/fpga_compile/build/src/fpga_compile.cpp", "line":"77"}]}]}, {"type":"text", "text":"Compiler failed to schedule this loop with smaller II due to memory dependency:", "details":[{"type":"text", "text":"From: Load Operation (%L)", "links":[{"filename":"/home/u58822/One-API/oneAPI-samples/DirectProgramming/DPC++FPGA/Tutorials/GettingStarted/fpga_compile/build/src/fpga_compile.cpp", "line":"77"}]}, {"type":"text", "text":"To: Store Operation (%L)", "links":[{"filename":"/home/u58822/One-API/oneAPI-samples/DirectProgramming/DPC++FPGA/Tutorials/GettingStarted/fpga_compile/build/src/fpga_compile.cpp", "line":"77"}]}]}, {"type":"text", "text":"Most critical loop feedback path during scheduling:", "details":[{"type":"text", "text":"223.00 clock cycles Load Operation (%L)", "links":[{"filename":"/home/u58822/One-API/oneAPI-samples/DirectProgramming/DPC++FPGA/Tutorials/GettingStarted/fpga_compile/build/src/fpga_compile.cpp", "line":"77"}]}, {"type":"text", "text":"56.00 clock cycles Store Operation (%L)", "links":[{"filename":"/home/u58822/One-API/oneAPI-samples/DirectProgramming/DPC++FPGA/Tutorials/GettingStarted/fpga_compile/build/src/fpga_compile.cpp", "line":"77"}]}, {"type":"text", "text":"0.89 clock cycles 32-bit Integer Add Operation (%L)", "links":[{"filename":"/home/u58822/One-API/oneAPI-samples/DirectProgramming/DPC++FPGA/Tutorials/GettingStarted/fpga_compile/build/src/fpga_compile.cpp", "line":"77"}]}]}, {"type":"text", "text":"Hyper-Optimized loop structure: n/a"}, {"type":"text", "text":"II is an approximation due to the following stallable instructions:", "details":[{"type":"text", "text":"Load Operation (%L)", "links":[{"filename":"/home/u58822/One-API/oneAPI-samples/DirectProgramming/DPC++FPGA/Tutorials/GettingStarted/fpga_compile/build/src/fpga_compile.cpp", "line":"77"}]}, {"type":"text", "text":"Load Operation (%L)", "links":[{"filename":"/home/u58822/One-API/oneAPI-samples/DirectProgramming/DPC++FPGA/Tutorials/GettingStarted/fpga_compile/build/src/fpga_compile.cpp", "line":"77"}]}, {"type":"text", "text":"Store Operation (%L)", "links":[{"filename":"/home/u58822/One-API/oneAPI-samples/DirectProgramming/DPC++FPGA/Tutorials/GettingStarted/fpga_compile/build/src/fpga_compile.cpp", "line":"77"}]}]}, {"type":"text", "text":"Maximum concurrent iterations: Capacity of loop", "details":[{"type":"text", "text":"Use the %L viewer to estimate capacity", "links":[{"view":"Fmax II Report"}]}]}, {"type":"text", "text":"See %L for more information", "links":[{"guide":"Best Practices Guide : Loops in a Single Work-Item Kernel", "link":"file:////glob/development-tools/versions/oneapi/gold/inteloneapi/compiler/2021.1.2/linux/lib/oclfpga/aoc_help_pages/wfa1476380079940.html"}]}], "children":[]}]}]};
var loop_attrJSON={"name":"loop_attributes", "id":4294967295, "nodes":[{"name":"k0_ZTS9VectorAdd", "id":385552464, "clk":"No", "fmax":"240.00", "type":"kernel", "children":[{"name":"VectorAdd.B0", "id":385110048, "af":"240.00", "br":"0", "ci":"0", "fo":"Disabled", "ii":"1", "ll":"1", "lt":"2.000000", "mi":"n/a", "pl":"Yes", "tc":"0", "tn":"1", "type":"bb"}, {"name":"VectorAdd.B1", "id":384816784, "af":"240.00", "br":"1", "ci":"0", "fo":"Disabled", "ii":"280", "ll":"1", "lt":"282.000000", "mi":"1", "pl":"Yes", "tc":"10240", "tn":"1", "details":[{"type":"text", "text":"Hyper-Optimized loop structure: n/a"}], "debug":[[{"filename":"/home/u58822/One-API/oneAPI-samples/DirectProgramming/DPC++FPGA/Tutorials/GettingStarted/fpga_compile/build/src/fpga_compile.cpp", "line":76}]], "type":"loop"}, {"name":"VectorAdd.B2", "id":384816864, "af":"240.00", "br":"0", "ci":"0", "fo":"Disabled", "ii":"1", "ll":"1", "lt":"1.000000", "mi":"n/a", "pl":"Yes", "tc":"0", "tn":"1", "type":"bb"}]}]};
var summaryJSON={"performanceSummary":{"name":"Kernel Summary", "columns":["Kernel Name", "Kernel Type", "Autorun", "Workgroup Size", "# Compute Units"], "children":[{"name":"VectorAdd", "data":["Single work-item", "No", [1, 1, 1], 1], "details":[{"type":"text", "text":"Kernel type: Single work-item"}, {"type":"text", "text":"Required workgroup size: (1, 1, 1)"}, {"type":"text", "text":"Maximum workgroup size: 1"}], "debug":[[{"filename":"", "line":0}]]}]}, "estimatedResources":{"name":"Estimated Resource Usage", "columns":["Kernel Name", "ALUTs ", "FFs  ", "RAMs ", "DSPs ", "MLABs"], "children":[{"name":"VectorAdd", "data":[3367, 9873, 38, 0, 41], "debug":[[{"filename":"", "line":0}]]}, {"name":"Global Interconnect", "classes":["summary-highlight", "nohover"], "data":[8779, 12545, 78, 0, 0]}, {"name":"Board Interface", "classes":["summary-highlight", "nohover"], "data":[179950, 358572, 492, 123, 0]}, {"name":"System description ROM", "classes":["summary-highlight", "nohover"], "data":[0, 67, 2, 0, 0]}, {"name":"Total", "classes":["summary-highlight", "nohover"], "data":[192096, 381057, 610, 123, 41], "data_percent":[22.4831, 22.2997, 22.4843, 8.10277]}, {"name":"Available", "classes":["summary-highlight", "nohover"], "data":[854400, 1708800, 2713, 1518, 0]}]}, "compileWarnings":{"name":"Compile Warnings", "children":[]}};
var warningsJSON={"nodes":[]};
var fileJSON=[{"path":"/glob/development-tools/versions/oneapi/gold/inteloneapi/dev-utilities/2021.1.1/include/dpc_common.hpp", "name":"dpc_common.hpp", "has_active_debug_locs":false, "absName":"/glob/development-tools/versions/oneapi/gold/inteloneapi/dev-utilities/2021.1.1/include/dpc_common.hpp", "content":"//==============================================================\012// Copyright © 2020 Intel Corporation\012//\012// SPDX-License-Identifier: MIT\012// =============================================================\012\012#ifndef _DP_HPP\012#define _DP_HPP\012\012#pragma once\012\012#include <stdlib.h>\012#include <exception>\012\012#include <CL/sycl.hpp>\012\012namespace dpc_common {\012// this exception handler with catch async exceptions\012static auto exception_handler = [](cl::sycl::exception_list eList) {\012  for (std::exception_ptr const &e : eList) {\012    try {\012      std::rethrow_exception(e);\012    } catch (std::exception const &e) {\012#if _DEBUG\012      std::cout << \"Failure\" << std::endl;\012#endif\012      std::terminate();\012    }\012  }\012};\012\012// The TimeInterval is a simple RAII class.\012// Construct the timer at the point you want to start timing.\012// Use the Elapsed() method to return time since construction.\012\012class TimeInterval {\012 public:\012  TimeInterval() : start_(std::chrono::steady_clock::now()) {}\012\012  double Elapsed() {\012    auto now = std::chrono::steady_clock::now();\012    return std::chrono::duration_cast<Duration>(now - start_).count();\012  }\012\012 private:\012  using Duration = std::chrono::duration<double>;\012  std::chrono::steady_clock::time_point start_;\012};\012\012};  // namespace dpc_common\012\012#endif\012"}, {"path":"/home/u58822/One-API/oneAPI-samples/DirectProgramming/DPC++FPGA/Tutorials/GettingStarted/fpga_compile/build/src/fpga_compile.cpp", "name":"fpga_compile.cpp", "has_active_debug_locs":false, "absName":"/home/u58822/One-API/oneAPI-samples/DirectProgramming/DPC++FPGA/Tutorials/GettingStarted/fpga_compile/build/src/fpga_compile.cpp", "content":"//==============================================================\012// Copyright Intel Corporation\012//\012// SPDX-License-Identifier: MIT\012// =============================================================\012#include <CL/sycl.hpp>\012#include <CL/sycl/INTEL/fpga_extensions.hpp>\012#include <iostream>\012#include <vector>\012\012// dpc_common.hpp can be found in the dev-utilities include folder.\012// e.g., $ONEAPI_ROOT/dev-utilities//include/dpc_common.hpp\012#include \"dpc_common.hpp\"\012\012using namespace sycl;\012\012// Vector size for this example\012constexpr size_t kSize = 10240;\012\012// Forward declaration of the kernel name\012// (This will become unnecessary in a future compiler version.)\012class VectorAdd;\012\012\012int main() {\012\012  // Set up three vectors and fill two with random values.\012  std::vector<int> vec_a(kSize), vec_b(kSize), vec_r(kSize);\012  for (int i = 0; i < kSize; i++) {\012    vec_a[i] = rand();\012    vec_b[i] = rand();\012  }\012\012  // Select either:\012  //  - the FPGA emulator device (CPU emulation of the FPGA)\012  //  - the FPGA device (a real FPGA)\012#if defined(FPGA_EMULATOR)\012  INTEL::fpga_emulator_selector device_selector;\012#else\012  INTEL::fpga_selector device_selector;\012#endif\012\012  try {\012\012    // Create a queue bound to the chosen device.\012    // If the device is unavailable, a SYCL runtime exception is thrown.\012    queue q(device_selector, dpc_common::exception_handler);\012\012    // Print out the device information.\012    std::cout << \"Running on device: \"\012              << q.get_device().get_info<info::device::name>() << \"\\n\";\012\012    {\012      // Create buffers to share data between host and device.\012      // The runtime will copy the necessary data to the FPGA device memory\012      // when the kernel is launched.\012      buffer buf_a(vec_a);\012      buffer buf_b(vec_b);\012      buffer buf_r(vec_r);\012\012\012      // Submit a command group to the device queue.\012      q.submit([&](handler& h) {\012\012        // The SYCL runtime uses the accessors to infer data dependencies.\012        // A \"read\" accessor must wait for data to be copied to the device\012        // before the kernel can start. A \"write noinit\" accessor does not.\012        accessor a(buf_a, h, read_only);\012        accessor b(buf_b, h, read_only);\012        accessor r(buf_r, h, write_only, noinit);\012\012        // The kernel uses single_task rather than parallel_for.\012        // The task's for loop is executed in pipeline parallel on the FPGA,\012        // exploiting the same parallelism as an equivalent parallel_for.\012        h.single_task<VectorAdd>([=]() {\012          for (int i = 0; i < kSize; ++i) {\012            r[i] = a[i] + b[i];\012          }\012        });\012      });\012\012      // The buffer destructor is invoked when the buffers pass out of scope.\012      // buf_r's destructor updates the content of vec_r on the host.\012    }\012\012    // The queue destructor is invoked when q passes out of scope.\012    // q's destructor invokes q's exception handler on any device exceptions.\012  }\012  catch (sycl::exception const& e) {\012    // Catches exceptions in the host code\012    std::cerr << \"Caught a SYCL host exception:\\n\" << e.what() << \"\\n\";\012\012    // Most likely the runtime couldn't find FPGA hardware!\012    if (e.get_cl_code() == CL_DEVICE_NOT_FOUND) {\012      std::cerr << \"If you are targeting an FPGA, please ensure that your \"\012                   \"system has a correctly configured FPGA board.\\n\";\012      std::cerr << \"Run sys_check in the oneAPI root directory to verify.\\n\";\012      std::cerr << \"If you are targeting the FPGA emulator, compile with \"\012                   \"-DFPGA_EMULATOR.\\n\";\012    }\012    std::terminate();\012  }\012\012  // Check the results.\012  int correct = 0;\012  for (int i = 0; i < kSize; i++) {\012    if ( vec_r[i] == vec_a[i] + vec_b[i] ) {\012      correct++;\012    }\012  }\012\012  // Summarize and return.\012  if (correct == kSize) {\012    std::cout << \"PASSED: results are correct\\n\";\012  } else {\012    std::cout << \"FAILED: results are incorrect\\n\";\012  }\012\012  return !(correct == kSize);\012}\012"}];
var alpha_viewer=false;