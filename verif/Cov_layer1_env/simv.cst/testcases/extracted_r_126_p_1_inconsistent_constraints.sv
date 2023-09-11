class c_126_1;
    integer i = -124;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_126_1;
    c_126_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zz01zxz0x011x1xxxzxzxzzx0xx01xzzzxxzxxzxxxzxxzzzzzzxzxzxxzxxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
