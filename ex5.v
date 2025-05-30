module ex2(clock,START,B0,B1,B2,B3,A0,A1,A2,A3,CNTVCO2,CNTVCON2,READY,P0,P1,P2,P3,P4,P5,P6,P7,WS9,WS10,WS11,WS12,WS13,WS14);
input clock;
input START,B0,B1,B2,B3,A0,A1,A2,A3;
output CNTVCO2,CNTVCON2,READY,P0,P1,P2,P3,P4,P5,P6,P7,WS9,WS10,WS11,WS12,WS13,WS14;
reg S0,S1,S2,S3,S4,S5,S6,S7,S8;
wire n66,n67_1,n68,n69,n78,n81,n83,n84,n85,n86,n87_1,n88,n89,n90,n92_1,n93,n94,n95,n96,n97_1,n98,n100,n101,n102_1,n104,n105,n106,n107_1,n108,n109,n110,n111,n112_1,n113,n114,n115,n116,n117,n118,n119,n120,n121,n122,n123,n124,n125,n126,n127,n128,n129,n130,n131,n132,n133,n134,n135,n136,n137,n138,n139,n140,n141,n142,n143,n144,n145,n146,n147,n148,n149,n151,n152,n153,n154,n155,n156,n157,n158,n159,n160,n161,n162,n163,n164,n165,n166,n167,n169,n170,n171,n172,n173,n174,n175,n176,n177,n178,n179,n180,n181,n182,n183,n184,n185,n187,n188,n189,n190,n191,n192,n193,n194,n195,n196,n197,n198,n199,n200,n201,n202,n203,n205,n206,n207,n208,n209,n210,n211,n212,n213,n214,n215,n216,n217,n219,n220,n221,n222,n223,n224,n225,n226,n227,n228,n230,n231,n232,n233,n234,n235,n236,n237,n238,n239,n241,n242,n243,n244,n245,n246,n247,n248,n249,n250,n252,n253,n254,n255,n256,n258,n259,n260,n261,n262,n264,n265,n266,n267,n268,n270,n271,n272,n273,n274,NS0,NS1,NS2,NS3,NS4,NS5,NS6,NS8,NS7;
not g0(n66,START);
not g1(n67_1,S0);
not g2(n68,S1);
not g3(n69,S2);
not g4(P7,S3);
not g5(P6,S4);
not g6(P5,S5);
not g7(P4,S6);
not g8(P3,S7);
not g9(P2,S8);
not g10(P1,S5);
not g11(P0,S0);
and g12(n78,S1,S2);
and g13(CNTVCO2,S0,n78);
not g14(CNTVCON2,CNTVCO2);
and g15(n81,n68,S2);
and g16(READY,S0,n81);
not g17(n83,READY);
and g18(n84,n78,n83);
not g19(n85,n84);
and g20(n86,n67_1,n85);
not g21(n87_1,n86);
and g22(n88,S0,n84);
not g23(n89,n88);
and g24(n90,n87_1,n89);
and g25(NS0,n66,n90);
and g26(n92_1,S2,n83);
not g27(n93,n92_1);
and g28(n94,n68,n93);
not g29(n95,n94);
and g30(n96,S1,n92_1);
not g31(n97_1,n96);
and g32(n98,n95,n97_1);
and g33(NS1,n66,n98);
and g34(n100,n69,READY);
not g35(n101,n100);
and g36(n102_1,n93,n101);
and g37(NS2,n66,n102_1);
and g38(n104,n68,n69);
and g39(n105,n67_1,n104);
not g40(n106,n105);
and g41(n107_1,n83,n106);
not g42(n108,n107_1);
and g43(n109,P0,S4);
not g44(n110,n109);
and g45(n111,P4,n109);
not g46(n112_1,n111);
and g47(n113,P0,S3);
not g48(n114,n113);
and g49(n115,S5,n114);
not g50(n116,n115);
and g51(n117,n111,n116);
not g52(n118,n117);
and g53(n119,P5,n113);
not g54(n120,n119);
and g55(n121,n118,n120);
not g56(n122,n121);
and g57(n123,P0,S2);
not g58(n124,n123);
and g59(n125,S4,n124);
not g60(n126,n125);
and g61(n127,n122,n126);
not g62(n128,n127);
and g63(n129,P6,n123);
not g64(n130,n129);
and g65(n131,n128,n130);
not g66(n132,n131);
and g67(n133,P0,S1);
not g68(n134,n133);
and g69(n135,S3,n134);
not g70(n136,n135);
and g71(n137,n132,n136);
not g72(n138,n137);
and g73(n139,P7,n133);
not g74(n140,n139);
and g75(n141,n138,n140);
not g76(n142,n141);
and g77(n143,n107_1,n142);
not g78(n144,n143);
and g79(n145,P7,n108);
not g80(n146,n145);
and g81(n147,n144,n146);
not g82(n148,n147);
and g83(n149,n66,n148);
not g84(NS3,n149);
and g85(n151,n132,n133);
and g86(n152,P7,n151);
not g87(n153,n152);
and g88(n154,n131,n134);
and g89(n155,S3,n154);
not g90(n156,n155);
and g91(n157,n141,n156);
not g92(n158,n157);
and g93(n159,n153,n158);
not g94(n160,n159);
and g95(n161,n107_1,n160);
not g96(n162,n161);
and g97(n163,P6,n108);
not g98(n164,n163);
and g99(n165,n162,n164);
not g100(n166,n165);
and g101(n167,n66,n166);
not g102(NS4,n167);
and g103(n169,n122,n123);
and g104(n170,P6,n169);
not g105(n171,n170);
and g106(n172,n121,n124);
and g107(n173,S4,n172);
not g108(n174,n173);
and g109(n175,n131,n174);
not g110(n176,n175);
and g111(n177,n171,n176);
not g112(n178,n177);
and g113(n179,n107_1,n178);
not g114(n180,n179);
and g115(n181,P5,n108);
not g116(n182,n181);
and g117(n183,n180,n182);
not g118(n184,n183);
and g119(n185,n66,n184);
not g120(NS5,n185);
and g121(n187,n111,n113);
and g122(n188,P5,n187);
not g123(n189,n188);
and g124(n190,n112_1,n114);
and g125(n191,S5,n190);
not g126(n192,n191);
and g127(n193,n121,n192);
not g128(n194,n193);
and g129(n195,n189,n194);
not g130(n196,n195);
and g131(n197,n107_1,n196);
not g132(n198,n197);
and g133(n199,P4,n108);
not g134(n200,n199);
and g135(n201,n198,n200);
not g136(n202,n201);
and g137(n203,n66,n202);
not g138(NS6,n203);
and g139(n205,B3,n83);
not g140(n206,n205);
and g141(n207,P3,READY);
not g142(n208,n207);
and g143(n209,n206,n208);
not g144(n210,n209);
and g145(n211,n108,n210);
not g146(n212,n211);
and g147(n213,S6,n110);
not g148(n214,n213);
and g149(n215,n112_1,n214);
and g150(n216,n107_1,n215);
not g151(n217,n216);
and g152(NS8,n212,n217);
and g153(n219,B2,n83);
not g154(n220,n219);
and g155(n221,P2,READY);
not g156(n222,n221);
and g157(n223,n220,n222);
not g158(n224,n223);
and g159(n225,n108,n224);
not g160(n226,n225);
and g161(n227,P3,n107_1);
not g162(n228,n227);
and g163(NS7,n226,n228);
and g164(n230,B1,n83);
not g165(n231,n230);
and g166(n232,P1,READY);
not g167(n233,n232);
and g168(n234,n231,n233);
not g169(n235,n234);
and g170(n236,n108,n235);
not g171(n237,n236);
and g172(n238,P2,n107_1);
not g173(n239,n238);
and g174(WS9,n237,n239);
and g175(n241,B0,n83);
not g176(n242,n241);
and g177(n243,P0,READY);
not g178(n244,n243);
and g179(n245,n242,n244);
not g180(n246,n245);
and g181(n247,n108,n246);
not g182(n248,n247);
and g183(n249,P1,n107_1);
not g184(n250,n249);
and g185(WS10,n248,n250);
and g186(n252,A3,n105);
not g187(n253,n252);
and g188(n254,S1,n106);
not g189(n255,n254);
and g190(n256,n253,n255);
not g191(WS11,n256);
and g192(n258,A2,n105);
not g193(n259,n258);
and g194(n260,S2,n106);
not g195(n261,n260);
and g196(n262,n259,n261);
not g197(WS12,n262);
and g198(n264,A1,n105);
not g199(n265,n264);
and g200(n266,S3,n106);
not g201(n267,n266);
and g202(n268,n265,n267);
not g203(WS13,n268);
and g204(n270,A0,n105);
not g205(n271,n270);
and g206(n272,S4,n106);
not g207(n273,n272);
and g208(n274,n271,n273);
not g209(WS14,n274);
always @(posedge clock) begin
S8<=NS8;
S7<=NS7;
S6<=NS6;
S5<=NS5;
S4<=NS4;
S3<=NS3;
S2<=NS2;
S1<=NS1;
S0<=NS0;
end
endmodule
