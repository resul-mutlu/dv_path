module or_gate_tb;
    
    reg a_tb;
    reg b_tb;
    wire y_tb;

    or_gate uut (
        .a(a_tb),
        .b(b_tb),
        .y(y_tb)
    );

    initial begin
        $monitor("Time: %0d | A: %b, B: %b ---> Output Y: %b", $time, a_tb, b_tb, y_tb);

        a_tb = 0; b_tb = 0;
        #10;
        
        a_tb = 0; b_tb = 1;
        #10;
        
        a_tb = 1; b_tb = 0;
        #10;
        
        a_tb = 1; b_tb = 1;
        #10;

        $display("=== OR Gate Verification Completed ===");
        $finish;
    end
endmodule
