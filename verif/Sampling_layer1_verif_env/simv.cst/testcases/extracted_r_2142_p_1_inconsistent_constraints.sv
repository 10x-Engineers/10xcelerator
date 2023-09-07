class c_2142_1;
    integer i = -355;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2142_1;
    c_2142_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1z1x10x1xzzxx1z01zz00x0xxx0xzz0xzxzxxzxxxzzzzxxxxzxxxzzxzxzxxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
