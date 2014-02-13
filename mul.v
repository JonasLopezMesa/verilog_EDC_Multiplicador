// Jonás López Mesa - Teno González Dos Santos
module mul(output wire [7:0] P, input wire [3:0] A, input wire [3:0] B);

//Declaración de conexiones internas:
wire s01, s02, s03, s11, s12, s13, s21, s22, s23, c_out0, c_out1, c_out2, c_in11, c_in12, c_in13, c_in21, c_in22, c_in23, c_in31, c_in32, c_in33;

//Estructura interna: Instancias de puertas y sus conexiones
cb cb00(P[0], , 0, A[0], B[0], 0);
cb cb01(s01, , 0, A[1], B[0], 0);
cb cb02(s02, , 0, A[2], B[0], 0);
cb cb03(s03, c_out0, 0, A[3], B[0], 0);

cb cb10(P[1], c_in11, s01, A[0], B[1], 0);
cb cb11(s11, c_in12, s02, A[1], B[1], c_in11);
cb cb12(s12, c_in13, s03, A[2], B[1], c_in12);
cb cb13(s13, c_out1, c_out0, A[3], B[1], c_in13);

cb cb20(P[2], c_in21, s11, A[0], B[2], 0);
cb cb21(s21, c_in22, s12, A[1], B[2], c_in21);
cb cb22(s22, c_in23, s13, A[2], B[2], c_in22);
cb cb23(s23, c_out2, c_out1, A[3], B[2], c_in23);

cb cb30(P[3], c_in31, s21, A[0], B[3], 0);
cb cb31(P[4], c_in32, s22, A[1], B[3], c_in31);
cb cb32(P[5], c_in33, s23, A[2], B[3], c_in32);
cb cb33(P[6], P[7], c_out2, A[3], B[3], c_in33);

endmodule
