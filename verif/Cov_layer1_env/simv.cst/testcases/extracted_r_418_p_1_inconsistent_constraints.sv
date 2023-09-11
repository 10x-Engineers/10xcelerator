class c_418_1;
    integer i = -416;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_418_1;
    c_418_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xz000z0x010111xzxx0zxzzx0x1zz100xxxxzzzzzzxxzzxxzxzxxzzxzzzzzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
