class c_358_1;
    integer i = -356;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_358_1;
    c_358_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10100xxzx10x1x1z0x10z10z110zzzxzzzzzzxxxzxxxzxzzzxxxxxxzxzzzxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
