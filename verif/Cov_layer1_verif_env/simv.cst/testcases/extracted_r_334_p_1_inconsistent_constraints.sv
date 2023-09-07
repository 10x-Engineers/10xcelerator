class c_334_1;
    integer i = -332;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_334_1;
    c_334_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0z1011101zzz0xz0110x11zxz1z1x001xxzzxxxxxxzzzzzzzxxzzzzzzxzzxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
