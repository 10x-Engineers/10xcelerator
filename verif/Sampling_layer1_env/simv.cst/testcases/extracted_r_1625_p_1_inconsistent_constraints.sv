class c_1625_1;
    integer i = -269;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1625_1;
    c_1625_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zxz0z1xx1x0x00x1z1000z1zz0z00xz0xzzzzzzxzzxxzxxzxzxzzxzzxxzzzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
