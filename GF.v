/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : M-2016.12-SP5
// Date      : Thu Dec 14 19:09:23 2017
/////////////////////////////////////////////////////////////


module GF ( inputA, inputB, output0 );
  input [2:0] inputA;
  input [2:0] inputB;
  output [2:0] output0;
  wire   n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28,
         n29, n30;

  initial $sdf_annotate ("GF.sdf");

  XOR40 U17 ( .A(n15), .B(n16), .C(n17), .D(n18), .Q(output0[2]) );
  NAND20 U18 ( .A(inputA[2]), .B(inputB[0]), .Q(n18) );
  NOR20 U19 ( .A(n19), .B(n20), .Q(n17) );
  NOR20 U20 ( .A(n21), .B(n22), .Q(n15) );
  XOR30 U21 ( .A(n23), .B(n24), .C(n25), .Q(output0[1]) );
  NAND20 U22 ( .A(inputB[1]), .B(inputA[0]), .Q(n25) );
  NOR20 U23 ( .A(n26), .B(n21), .Q(n24) );
  XNR20 U24 ( .A(n16), .B(n27), .Q(output0[0]) );
  NOR20 U25 ( .A(n19), .B(n26), .Q(n27) );
  CLKIN0 U26 ( .A(inputB[0]), .Q(n26) );
  CLKIN0 U27 ( .A(inputA[0]), .Q(n19) );
  XNR20 U28 ( .A(n28), .B(n29), .Q(n16) );
  IMUX20 U29 ( .A(n30), .B(n23), .S(n22), .Q(n29) );
  CLKIN0 U30 ( .A(inputB[1]), .Q(n22) );
  NAND20 U31 ( .A(inputA[2]), .B(inputB[2]), .Q(n23) );
  NAND20 U32 ( .A(inputA[2]), .B(n20), .Q(n30) );
  NOR20 U33 ( .A(n20), .B(n21), .Q(n28) );
  CLKIN0 U34 ( .A(inputA[1]), .Q(n21) );
  CLKIN0 U35 ( .A(inputB[2]), .Q(n20) );
endmodule

