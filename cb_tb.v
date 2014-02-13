// Jonás López Mesa - Teno González Dos Santos
// Testbench para modulos fa con retardo en los semisumadores que lo componen
`timescale 1 ns / 10 ps //Directiva que fija la unidad de tiempo de simulación y el del paso de simulacion
module cb_tb;

//declaracion de señales
reg test_d, test_a, test_b, test_cin;
wire test_sum, test_cout;

//instancia del modulo a testear
cb cb1( test_sum, test_cout, test_d, test_a, test_b, test_cin);

initial
begin
  $monitor("tiempo=%0d a=%b b=%b d=%b cin=%b s=%b cout=%b", $time, test_a, test_b, test_d, test_cin, test_sum, test_cout);
  $dumpfile("cb_tb.vcd");
  $dumpvars;
  //vector de test 0
  test_cin = 1'b0;
  test_a = 1'b0;
  test_b = 1'b0;
  test_d = 1'b0;
  # 20;
  //vector de test 1
  test_cin = 1'b0;
  test_a = 1'b0;
  test_b = 1'b1;
  test_d = 1'b0;
  # 20;
  //vector de test 2
  test_cin = 1'b0;
  test_a = 1'b1;
  test_b = 1'b0;
  test_d = 1'b0;
  # 20;
  //vector de test 3
  test_cin = 1'b0;
  test_a = 1'b1;
  test_b = 1'b1;
  test_d = 1'b0;
  # 20;
  //vector de test 4
  test_cin = 1'b1;
  test_a = 1'b0;
  test_b = 1'b0;
  test_d = 1'b0;
  # 20;
  //vector de test 5
  test_cin = 1'b1;
  test_a = 1'b0;
  test_b = 1'b1;
  test_d = 1'b0;
  # 20;
  //vector de test 6
  test_cin = 1'b1;
  test_a = 1'b1;
  test_b = 1'b0;
  test_d = 1'b0;
  # 20;
  //vector de test 7
  test_cin = 1'b1;
  test_a = 1'b1;
  test_b = 1'b1;
  test_d = 1'b0;
  # 20;
  //fin simulacion
  $finish;
end

endmodule
