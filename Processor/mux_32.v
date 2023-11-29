module mux_32 #(parameter WIDTH = 32) (out, select, in0, in1, in2, in3, in4, in5, in6, in7, in8, in9, in10, in11, in12, 
    in13, in14, in15, in16, in17, in18, in19, in20, in21, in22, in23, in24, in25, in26, in27, in28, in29, in30, in31);

    input [4:0] select;
    input [WIDTH-1:0] in0, in1, in2, in3, in4, in5, in6, in7, in8, in9, in10, in11, in12, in13, in14, in15,
		    in16, in17, in18, in19, in20, in21, in22, in23, in24, in25, in26, in27, in28, in29, in30, in31;
    output [WIDTH-1:0] out;
    wire [WIDTH-1: 0] w1, w2; 

    mux_16 #(WIDTH) first_top(w1, select[3:0], in0, in1, in2, in3, in4, in5, in6, in7, in8, 
			    in9, in10, in11, in12, in13, in14, in15);
    mux_16 #(WIDTH) first_bottom(w2, select[3:0], in16, in17, in18, in19, in20, in21, in22,
			    in23, in24, in25, in26, in27, in28, in29, in30, in31);
    mux_2 #(WIDTH) second(out, select[4], w1, w2);
endmodule
