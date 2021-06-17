/* Generated by Yosys 0.9 (git sha1 1979e0b) */

(* dynports =  1  *)
(* top =  1  *)
(* src = "sbm.v:1" *)
module Sequential_Binary_Multiplier(Product, Ready, Multiplicand, Multiplier, Start, clock, reset_b);
  (* src = "sbm.v:45" *)
  wire [4:0] _000_;
  (* src = "sbm.v:45" *)
  wire [4:0] _001_;
  (* src = "sbm.v:45" *)
  wire _002_;
  (* src = "sbm.v:45" *)
  wire [2:0] _003_;
  (* src = "sbm.v:45" *)
  wire [4:0] _004_;
  wire _005_;
  wire _006_;
  wire _007_;
  wire _008_;
  wire _009_;
  wire _010_;
  wire _011_;
  wire _012_;
  wire _013_;
  wire _014_;
  wire _015_;
  wire _016_;
  wire _017_;
  wire _018_;
  wire _019_;
  wire _020_;
  wire _021_;
  wire _022_;
  wire _023_;
  wire _024_;
  wire _025_;
  wire _026_;
  wire _027_;
  wire _028_;
  wire _029_;
  wire _030_;
  wire _031_;
  wire _032_;
  wire _033_;
  wire _034_;
  wire _035_;
  wire _036_;
  wire _037_;
  wire _038_;
  wire _039_;
  wire _040_;
  wire _041_;
  wire _042_;
  wire _043_;
  wire _044_;
  wire _045_;
  wire _046_;
  wire _047_;
  wire _048_;
  wire _049_;
  wire _050_;
  wire _051_;
  wire _052_;
  wire _053_;
  wire _054_;
  wire _055_;
  wire _056_;
  wire _057_;
  wire _058_;
  wire _059_;
  wire _060_;
  wire _061_;
  wire _062_;
  wire _063_;
  wire _064_;
  wire _065_;
  wire _066_;
  wire _067_;
  wire _068_;
  wire _069_;
  wire _070_;
  wire _071_;
  wire _072_;
  wire _073_;
  wire _074_;
  wire _075_;
  wire _076_;
  wire _077_;
  (* src = "sbm.v:13" *)
  wire [4:0] B;
  (* src = "sbm.v:14" *)
  wire C;
  (* src = "sbm.v:6" *)
  input [4:0] Multiplicand;
  (* src = "sbm.v:6" *)
  input [4:0] Multiplier;
  (* src = "sbm.v:15" *)
  wire [2:0] P;
  (* src = "sbm.v:4" *)
  output [9:0] Product;
  (* src = "sbm.v:5" *)
  output Ready;
  (* src = "sbm.v:7" *)
  input Start;
  (* src = "sbm.v:7" *)
  input clock;
  (* src = "sbm.v:12" *)
  wire [2:0] next_state;
  (* src = "sbm.v:7" *)
  input reset_b;
  (* src = "sbm.v:12" *)
  wire [2:0] state;
  sky130_fd_sc_hd__or3b_1 _078_ (
    .A(state[1]),
    .B(state[2]),
    .C_N(state[0]),
    .X(_042_)
  );
  sky130_fd_sc_hd__clkinv_1 _079_ (
    .A(_042_),
    .Y(Ready)
  );
  sky130_fd_sc_hd__nand2_1 _080_ (
    .A(B[4]),
    .B(Product[9]),
    .Y(_043_)
  );
  sky130_fd_sc_hd__xor2_1 _081_ (
    .A(B[4]),
    .B(Product[9]),
    .X(_044_)
  );
  sky130_fd_sc_hd__nand2_1 _082_ (
    .A(B[3]),
    .B(Product[8]),
    .Y(_045_)
  );
  sky130_fd_sc_hd__lpflow_inputiso1p_1 _083_ (
    .A(B[3]),
    .SLEEP(Product[8]),
    .X(_046_)
  );
  sky130_fd_sc_hd__and2_0 _084_ (
    .A(B[2]),
    .B(Product[7]),
    .X(_047_)
  );
  sky130_fd_sc_hd__nand2_1 _085_ (
    .A(B[1]),
    .B(Product[6]),
    .Y(_048_)
  );
  sky130_fd_sc_hd__nand2_1 _086_ (
    .A(B[0]),
    .B(Product[5]),
    .Y(_049_)
  );
  sky130_fd_sc_hd__nor2_1 _087_ (
    .A(B[1]),
    .B(Product[6]),
    .Y(_050_)
  );
  sky130_fd_sc_hd__lpflow_isobufsrc_1 _088_ (
    .A(_048_),
    .SLEEP(_050_),
    .X(_051_)
  );
  sky130_fd_sc_hd__o21ai_0 _089_ (
    .A1(_049_),
    .A2(_050_),
    .B1(_048_),
    .Y(_052_)
  );
  sky130_fd_sc_hd__nor2_1 _090_ (
    .A(B[2]),
    .B(Product[7]),
    .Y(_053_)
  );
  sky130_fd_sc_hd__nor2_1 _091_ (
    .A(_047_),
    .B(_053_),
    .Y(_054_)
  );
  sky130_fd_sc_hd__a21o_1 _092_ (
    .A1(_052_),
    .A2(_054_),
    .B1(_047_),
    .X(_055_)
  );
  sky130_fd_sc_hd__a221o_1 _093_ (
    .A1(B[3]),
    .A2(Product[8]),
    .B1(_052_),
    .B2(_054_),
    .C1(_047_),
    .X(_056_)
  );
  sky130_fd_sc_hd__or3b_1 _094_ (
    .A(state[0]),
    .B(state[2]),
    .C_N(state[1]),
    .X(_057_)
  );
  sky130_fd_sc_hd__clkinv_1 _095_ (
    .A(_057_),
    .Y(next_state[2])
  );
  sky130_fd_sc_hd__and2_0 _096_ (
    .A(Product[0]),
    .B(next_state[2]),
    .X(_058_)
  );
  sky130_fd_sc_hd__nand2_1 _097_ (
    .A(Product[0]),
    .B(next_state[2]),
    .Y(_059_)
  );
  sky130_fd_sc_hd__a31oi_1 _098_ (
    .A1(_044_),
    .A2(_046_),
    .A3(_056_),
    .B1(_059_),
    .Y(_060_)
  );
  sky130_fd_sc_hd__nor2_1 _099_ (
    .A(state[0]),
    .B(state[1]),
    .Y(_061_)
  );
  sky130_fd_sc_hd__and2_0 _100_ (
    .A(state[2]),
    .B(_061_),
    .X(_062_)
  );
  sky130_fd_sc_hd__nand2_1 _101_ (
    .A(state[2]),
    .B(_061_),
    .Y(_063_)
  );
  sky130_fd_sc_hd__a31oi_1 _102_ (
    .A1(C),
    .A2(_042_),
    .A3(_063_),
    .B1(_058_),
    .Y(_064_)
  );
  sky130_fd_sc_hd__a21oi_1 _103_ (
    .A1(_043_),
    .A2(_060_),
    .B1(_064_),
    .Y(_002_)
  );
  sky130_fd_sc_hd__nand2_1 _104_ (
    .A(Multiplier[0]),
    .B(Ready),
    .Y(_065_)
  );
  sky130_fd_sc_hd__nand2_1 _105_ (
    .A(Product[0]),
    .B(_042_),
    .Y(_066_)
  );
  sky130_fd_sc_hd__nor2_1 _106_ (
    .A(Product[1]),
    .B(_063_),
    .Y(_067_)
  );
  sky130_fd_sc_hd__a31oi_1 _107_ (
    .A1(_063_),
    .A2(_065_),
    .A3(_066_),
    .B1(_067_),
    .Y(_004_[0])
  );
  sky130_fd_sc_hd__nand2_1 _108_ (
    .A(Multiplier[1]),
    .B(Ready),
    .Y(_068_)
  );
  sky130_fd_sc_hd__nand2_1 _109_ (
    .A(Product[1]),
    .B(_042_),
    .Y(_069_)
  );
  sky130_fd_sc_hd__nor2_1 _110_ (
    .A(Product[2]),
    .B(_063_),
    .Y(_070_)
  );
  sky130_fd_sc_hd__a31oi_1 _111_ (
    .A1(_063_),
    .A2(_068_),
    .A3(_069_),
    .B1(_070_),
    .Y(_004_[1])
  );
  sky130_fd_sc_hd__nand2_1 _112_ (
    .A(Multiplier[2]),
    .B(Ready),
    .Y(_071_)
  );
  sky130_fd_sc_hd__nand2_1 _113_ (
    .A(Product[2]),
    .B(_042_),
    .Y(_072_)
  );
  sky130_fd_sc_hd__nor2_1 _114_ (
    .A(Product[3]),
    .B(_063_),
    .Y(_073_)
  );
  sky130_fd_sc_hd__a31oi_1 _115_ (
    .A1(_063_),
    .A2(_071_),
    .A3(_072_),
    .B1(_073_),
    .Y(_004_[2])
  );
  sky130_fd_sc_hd__nand2_1 _116_ (
    .A(Multiplier[3]),
    .B(Ready),
    .Y(_074_)
  );
  sky130_fd_sc_hd__nand2_1 _117_ (
    .A(Product[3]),
    .B(_042_),
    .Y(_075_)
  );
  sky130_fd_sc_hd__nor2_1 _118_ (
    .A(Product[4]),
    .B(_063_),
    .Y(_076_)
  );
  sky130_fd_sc_hd__a31oi_1 _119_ (
    .A1(_063_),
    .A2(_074_),
    .A3(_075_),
    .B1(_076_),
    .Y(_004_[3])
  );
  sky130_fd_sc_hd__nand2_1 _120_ (
    .A(Multiplier[4]),
    .B(Ready),
    .Y(_077_)
  );
  sky130_fd_sc_hd__nand2_1 _121_ (
    .A(Product[4]),
    .B(_042_),
    .Y(_005_)
  );
  sky130_fd_sc_hd__nor2_1 _122_ (
    .A(Product[5]),
    .B(_063_),
    .Y(_006_)
  );
  sky130_fd_sc_hd__a31oi_1 _123_ (
    .A1(_063_),
    .A2(_077_),
    .A3(_005_),
    .B1(_006_),
    .Y(_004_[4])
  );
  sky130_fd_sc_hd__o21ai_0 _124_ (
    .A1(P[0]),
    .A2(Ready),
    .B1(_057_),
    .Y(_007_)
  );
  sky130_fd_sc_hd__o21ai_0 _125_ (
    .A1(P[0]),
    .A2(_057_),
    .B1(_007_),
    .Y(_003_[0])
  );
  sky130_fd_sc_hd__nor3_1 _126_ (
    .A(P[0]),
    .B(P[1]),
    .C(_057_),
    .Y(_008_)
  );
  sky130_fd_sc_hd__o211ai_1 _127_ (
    .A1(P[0]),
    .A2(_057_),
    .B1(_042_),
    .C1(P[1]),
    .Y(_009_)
  );
  sky130_fd_sc_hd__nand2b_1 _128_ (
    .A_N(_008_),
    .B(_009_),
    .Y(_003_[1])
  );
  sky130_fd_sc_hd__nor3_1 _129_ (
    .A(P[2]),
    .B(Ready),
    .C(_008_),
    .Y(_010_)
  );
  sky130_fd_sc_hd__a21oi_1 _130_ (
    .A1(P[2]),
    .A2(_008_),
    .B1(_010_),
    .Y(_003_[2])
  );
  sky130_fd_sc_hd__nand2_1 _131_ (
    .A(Multiplicand[0]),
    .B(Ready),
    .Y(_011_)
  );
  sky130_fd_sc_hd__nand2_1 _132_ (
    .A(B[0]),
    .B(_042_),
    .Y(_012_)
  );
  sky130_fd_sc_hd__nand2_1 _133_ (
    .A(_011_),
    .B(_012_),
    .Y(_001_[0])
  );
  sky130_fd_sc_hd__nand2_1 _134_ (
    .A(Multiplicand[1]),
    .B(Ready),
    .Y(_013_)
  );
  sky130_fd_sc_hd__nand2_1 _135_ (
    .A(B[1]),
    .B(_042_),
    .Y(_014_)
  );
  sky130_fd_sc_hd__nand2_1 _136_ (
    .A(_013_),
    .B(_014_),
    .Y(_001_[1])
  );
  sky130_fd_sc_hd__nand2_1 _137_ (
    .A(Multiplicand[2]),
    .B(Ready),
    .Y(_015_)
  );
  sky130_fd_sc_hd__nand2_1 _138_ (
    .A(B[2]),
    .B(_042_),
    .Y(_016_)
  );
  sky130_fd_sc_hd__nand2_1 _139_ (
    .A(_015_),
    .B(_016_),
    .Y(_001_[2])
  );
  sky130_fd_sc_hd__nand2_1 _140_ (
    .A(Multiplicand[3]),
    .B(Ready),
    .Y(_017_)
  );
  sky130_fd_sc_hd__nand2_1 _141_ (
    .A(B[3]),
    .B(_042_),
    .Y(_018_)
  );
  sky130_fd_sc_hd__nand2_1 _142_ (
    .A(_017_),
    .B(_018_),
    .Y(_001_[3])
  );
  sky130_fd_sc_hd__nand2_1 _143_ (
    .A(Multiplicand[4]),
    .B(Ready),
    .Y(_019_)
  );
  sky130_fd_sc_hd__nand2_1 _144_ (
    .A(B[4]),
    .B(_042_),
    .Y(_020_)
  );
  sky130_fd_sc_hd__nand2_1 _145_ (
    .A(_019_),
    .B(_020_),
    .Y(_001_[4])
  );
  sky130_fd_sc_hd__nand2_1 _146_ (
    .A(Product[6]),
    .B(_062_),
    .Y(_021_)
  );
  sky130_fd_sc_hd__a21oi_1 _147_ (
    .A1(B[0]),
    .A2(_058_),
    .B1(Product[5]),
    .Y(_022_)
  );
  sky130_fd_sc_hd__o21ai_0 _148_ (
    .A1(_049_),
    .A2(_059_),
    .B1(_042_),
    .Y(_023_)
  );
  sky130_fd_sc_hd__o31ai_1 _149_ (
    .A1(_062_),
    .A2(_022_),
    .A3(_023_),
    .B1(_021_),
    .Y(_000_[0])
  );
  sky130_fd_sc_hd__nand2_1 _150_ (
    .A(Product[6]),
    .B(_042_),
    .Y(_024_)
  );
  sky130_fd_sc_hd__xnor2_1 _151_ (
    .A(_049_),
    .B(_051_),
    .Y(_025_)
  );
  sky130_fd_sc_hd__o22ai_1 _152_ (
    .A1(Product[7]),
    .A2(_063_),
    .B1(_025_),
    .B2(_059_),
    .Y(_026_)
  );
  sky130_fd_sc_hd__a31oi_1 _153_ (
    .A1(_059_),
    .A2(_063_),
    .A3(_024_),
    .B1(_026_),
    .Y(_000_[1])
  );
  sky130_fd_sc_hd__xnor2_1 _154_ (
    .A(_052_),
    .B(_054_),
    .Y(_027_)
  );
  sky130_fd_sc_hd__nand2_1 _155_ (
    .A(Product[7]),
    .B(_042_),
    .Y(_028_)
  );
  sky130_fd_sc_hd__nand3_1 _156_ (
    .A(_059_),
    .B(_063_),
    .C(_028_),
    .Y(_029_)
  );
  sky130_fd_sc_hd__o21ai_0 _157_ (
    .A1(Product[8]),
    .A2(_063_),
    .B1(_029_),
    .Y(_030_)
  );
  sky130_fd_sc_hd__a21oi_1 _158_ (
    .A1(_058_),
    .A2(_027_),
    .B1(_030_),
    .Y(_000_[2])
  );
  sky130_fd_sc_hd__nor2_1 _159_ (
    .A(Product[9]),
    .B(_063_),
    .Y(_031_)
  );
  sky130_fd_sc_hd__nand2_1 _160_ (
    .A(_045_),
    .B(_046_),
    .Y(_032_)
  );
  sky130_fd_sc_hd__xnor2_1 _161_ (
    .A(_055_),
    .B(_032_),
    .Y(_033_)
  );
  sky130_fd_sc_hd__nand2_1 _162_ (
    .A(_058_),
    .B(_033_),
    .Y(_034_)
  );
  sky130_fd_sc_hd__nand3_1 _163_ (
    .A(Product[8]),
    .B(_042_),
    .C(_059_),
    .Y(_035_)
  );
  sky130_fd_sc_hd__a31oi_1 _164_ (
    .A1(_063_),
    .A2(_034_),
    .A3(_035_),
    .B1(_031_),
    .Y(_000_[3])
  );
  sky130_fd_sc_hd__nor2_1 _165_ (
    .A(C),
    .B(_063_),
    .Y(_036_)
  );
  sky130_fd_sc_hd__a21o_1 _166_ (
    .A1(_046_),
    .A2(_056_),
    .B1(_044_),
    .X(_037_)
  );
  sky130_fd_sc_hd__nand2_1 _167_ (
    .A(_060_),
    .B(_037_),
    .Y(_038_)
  );
  sky130_fd_sc_hd__a31oi_1 _168_ (
    .A1(Product[9]),
    .A2(_042_),
    .A3(_059_),
    .B1(_062_),
    .Y(_039_)
  );
  sky130_fd_sc_hd__a21oi_1 _169_ (
    .A1(_038_),
    .A2(_039_),
    .B1(_036_),
    .Y(_000_[4])
  );
  sky130_fd_sc_hd__nor3_1 _170_ (
    .A(P[0]),
    .B(P[1]),
    .C(P[2]),
    .Y(_040_)
  );
  sky130_fd_sc_hd__nand2_1 _171_ (
    .A(Start),
    .B(Ready),
    .Y(_041_)
  );
  sky130_fd_sc_hd__o21ai_0 _172_ (
    .A1(_063_),
    .A2(_040_),
    .B1(_041_),
    .Y(next_state[1])
  );
  sky130_fd_sc_hd__nor2_1 _173_ (
    .A(next_state[2]),
    .B(next_state[1]),
    .Y(next_state[0])
  );
  (* src = "sbm.v:45" *)
  sky130_fd_sc_hd__dfxtp_1 _174_ (
    .CLK(clock),
    .D(_000_[0]),
    .Q(Product[5])
  );
  (* src = "sbm.v:45" *)
  sky130_fd_sc_hd__dfxtp_1 _175_ (
    .CLK(clock),
    .D(_000_[1]),
    .Q(Product[6])
  );
  (* src = "sbm.v:45" *)
  sky130_fd_sc_hd__dfxtp_1 _176_ (
    .CLK(clock),
    .D(_000_[2]),
    .Q(Product[7])
  );
  (* src = "sbm.v:45" *)
  sky130_fd_sc_hd__dfxtp_1 _177_ (
    .CLK(clock),
    .D(_000_[3]),
    .Q(Product[8])
  );
  (* src = "sbm.v:45" *)
  sky130_fd_sc_hd__dfxtp_1 _178_ (
    .CLK(clock),
    .D(_000_[4]),
    .Q(Product[9])
  );
  (* src = "sbm.v:45" *)
  sky130_fd_sc_hd__dfxtp_1 _179_ (
    .CLK(clock),
    .D(_001_[0]),
    .Q(B[0])
  );
  (* src = "sbm.v:45" *)
  sky130_fd_sc_hd__dfxtp_1 _180_ (
    .CLK(clock),
    .D(_001_[1]),
    .Q(B[1])
  );
  (* src = "sbm.v:45" *)
  sky130_fd_sc_hd__dfxtp_1 _181_ (
    .CLK(clock),
    .D(_001_[2]),
    .Q(B[2])
  );
  (* src = "sbm.v:45" *)
  sky130_fd_sc_hd__dfxtp_1 _182_ (
    .CLK(clock),
    .D(_001_[3]),
    .Q(B[3])
  );
  (* src = "sbm.v:45" *)
  sky130_fd_sc_hd__dfxtp_1 _183_ (
    .CLK(clock),
    .D(_001_[4]),
    .Q(B[4])
  );
  (* src = "sbm.v:45" *)
  sky130_fd_sc_hd__dfxtp_1 _184_ (
    .CLK(clock),
    .D(_003_[0]),
    .Q(P[0])
  );
  (* src = "sbm.v:45" *)
  sky130_fd_sc_hd__dfxtp_1 _185_ (
    .CLK(clock),
    .D(_003_[1]),
    .Q(P[1])
  );
  (* src = "sbm.v:45" *)
  sky130_fd_sc_hd__dfxtp_1 _186_ (
    .CLK(clock),
    .D(_003_[2]),
    .Q(P[2])
  );
  (* src = "sbm.v:45" *)
  sky130_fd_sc_hd__dfxtp_1 _187_ (
    .CLK(clock),
    .D(_002_),
    .Q(C)
  );
  (* src = "sbm.v:45" *)
  sky130_fd_sc_hd__dfxtp_1 _188_ (
    .CLK(clock),
    .D(_004_[0]),
    .Q(Product[0])
  );
  (* src = "sbm.v:45" *)
  sky130_fd_sc_hd__dfxtp_1 _189_ (
    .CLK(clock),
    .D(_004_[1]),
    .Q(Product[1])
  );
  (* src = "sbm.v:45" *)
  sky130_fd_sc_hd__dfxtp_1 _190_ (
    .CLK(clock),
    .D(_004_[2]),
    .Q(Product[2])
  );
  (* src = "sbm.v:45" *)
  sky130_fd_sc_hd__dfxtp_1 _191_ (
    .CLK(clock),
    .D(_004_[3]),
    .Q(Product[3])
  );
  (* src = "sbm.v:45" *)
  sky130_fd_sc_hd__dfxtp_1 _192_ (
    .CLK(clock),
    .D(_004_[4]),
    .Q(Product[4])
  );
  (* src = "sbm.v:25" *)
  sky130_fd_sc_hd__dfstp_2 _193_ (
    .CLK(clock),
    .D(next_state[0]),
    .Q(state[0]),
    .SET_B(reset_b)
  );
  (* src = "sbm.v:25" *)
  sky130_fd_sc_hd__dfrtp_1 _194_ (
    .CLK(clock),
    .D(next_state[1]),
    .Q(state[1]),
    .RESET_B(reset_b)
  );
  (* src = "sbm.v:25" *)
  sky130_fd_sc_hd__dfrtp_1 _195_ (
    .CLK(clock),
    .D(next_state[2]),
    .Q(state[2]),
    .RESET_B(reset_b)
  );
endmodule
