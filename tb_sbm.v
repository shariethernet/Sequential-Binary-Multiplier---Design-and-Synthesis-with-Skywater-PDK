// Test bench for the binary multiplier
module t_Sequential_Binary_Multiplier;
parameter dp_width = 5; // Set to width of datapath
wire [2*dp_width -1: 0] Product; // Output from multiplier
wire Ready;
reg [dp_width -1: 0] Multiplicand, Multiplier; // Inputs to multiplier
reg Start, clock, reset_b;
// Instantiate multiplier
Sequential_Binary_Multiplier M0 (Product, Ready, Multiplicand, Multiplier, Start, clock,
reset_b);
// Generate stimulus waveforms
initial #200 $finish ;
initial
begin
Start = 0;
reset_b = 0;
#2 Start = 1; reset_b = 1;
Multiplicand = 5'b10111; Multiplier = 5'b10011;
#10 Start = 0;
end
initial
begin
clock = 0;
repeat (26) #5 clock = ~clock;
end
// Display results and compare with Table 8.5
always @ ( posedge clock)
begin
$dumpfile("tb_sbm.vcd");
$dumpvars;
$strobe ("C=%b A=%b Q=%b P=%b time=%0d",M0.C,M0.A,M0.Q,M0.P, $time );
end
endmodule