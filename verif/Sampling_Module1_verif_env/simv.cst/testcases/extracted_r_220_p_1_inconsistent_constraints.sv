class c_220_1;
    integer i = 220;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_220_1;
    c_220_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xzxxz0z001z1x1000xxzz1z0xz0x10zzzxzxzxzzzzzxzxzxxzzzzzzxzxxzzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
