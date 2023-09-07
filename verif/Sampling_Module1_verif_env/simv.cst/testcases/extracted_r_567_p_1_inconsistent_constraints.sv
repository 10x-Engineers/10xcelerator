class c_567_1;
    integer i = 567;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_567_1;
    c_567_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x11x00x0zzzxzz1zx0111x101z0x1100xzzzzxxxzzzxzxxzzzxzxzxxzzxxxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
