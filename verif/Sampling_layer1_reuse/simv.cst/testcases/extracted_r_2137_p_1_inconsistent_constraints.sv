class c_2137_1;
    integer i = -355;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2137_1;
    c_2137_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z1xzzx0x00x0xxzxxxzzx10x00zzz1xzxzxxzxxxxzxxzzzxzzzzxzzzzzxzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
