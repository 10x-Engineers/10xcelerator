class c_3068_1;
    integer i = -510;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3068_1;
    c_3068_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1z10010x1z0zz01x00x11100110xzz0zxxzxxxxxzxxzxxxzzxxxxxzzxxxxxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
