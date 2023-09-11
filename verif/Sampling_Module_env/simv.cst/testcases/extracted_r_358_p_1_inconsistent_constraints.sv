class c_358_1;
    integer i = 358;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_358_1;
    c_358_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xz010z11xz01111xxx11100z011zz101zzzzzxxzzxzxzxzxzzzzxxzzzzxzxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
