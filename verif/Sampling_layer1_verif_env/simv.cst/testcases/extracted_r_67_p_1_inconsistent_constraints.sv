class c_67_1;
    integer i = -10;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_67_1;
    c_67_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzzx1011z0z1101zz0z0xzx1x0xxz11xxxzzxxzxxxzzxxxxzzzzzzzxzxzzzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
