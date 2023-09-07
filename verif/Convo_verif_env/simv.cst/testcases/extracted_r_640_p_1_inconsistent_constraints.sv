class c_640_1;
    integer i = 640;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_640_1;
    c_640_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1zxzxx0100z11z010zxxzzx1011z0xx0zzzxzxxxzxzxzxxzzzxzzxxxxxxzxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
