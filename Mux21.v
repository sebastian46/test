`timescale 1ns / 1ps

module Mux21(out,in,sel);

    output wire out; // declare ouput wire
    input wire [1:0] in;
    input wire sel; // declare input wires

    wire notS; // inverse s
    wire andA; // output of and0 gate
    wire andB; // output of and1 gate

    // instantiate gates
    not not0(notS, sel); 
    and and0(andA, notS, in[0]);
    and and1(andB, sel, in[1]);
    or or0(out, andA, andB);

endmodule