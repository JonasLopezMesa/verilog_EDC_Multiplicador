// Jonás López Mesa - Teno González Dos Santos
module cb(output wire sum, c_out, input wire d, a, b, c_in);

//Declaración de conexiones internas:
wire res_and;   //resultado del and

//Estructura interna: Instancias de puertas y sus conexiones
and #1 and1(res_and, a, b);
fa_v2 fa1(sum, c_out, d, res_and, c_in);

endmodule
