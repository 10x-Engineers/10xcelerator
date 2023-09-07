class c_911_1;
    integer i = -150;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_911_1;
    c_911_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0001x1z0z0000z1xzx01zz1001x0x1z0xzxxxzzxxxxxzxxxxzxzzzzxzzzzzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
