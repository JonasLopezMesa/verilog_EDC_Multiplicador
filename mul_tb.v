// Jonás López Mesa - Teno González Dos Santos
// Testbench para sumador con predicción de acarreo
`timescale 1 ns / 10 ps //Directiva que fija la unidad de tiempo de simulación y el del paso de simulacion
module mul_tb;

//declaracion de señales
reg[3:0] test_A, test_B;
wire[7:0] test_P;

//instancia del modulo a testear
mul mul1(test_P, test_A, test_B);

initial
begin
  $monitor("tiempo=%0d A=%d B=%d P=%d", $time, test_A, test_B, test_P);
  $dumpfile("mul_tb.vcd");
  $dumpvars;
  //Algunos valores de prueba
  test_A = 4'b1111;
  test_B = 4'b0000;
  # 60;  

  test_A = 4'b1111;
  test_B = 4'b1111;
  # 20;
  
  //fin simulacion
  $finish;
end

endmodule

//el retardo máximo para la operación más complicada 15*15 sea exitosa será de 69 ns.
