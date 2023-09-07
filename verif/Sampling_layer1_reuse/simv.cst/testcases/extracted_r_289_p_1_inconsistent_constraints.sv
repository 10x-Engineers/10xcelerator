class c_289_1;
    integer i = -47;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_289_1;
    c_289_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0x1z10x01zxx101zzxz0x0011z0xzx0zxzzzzzxzxzzzxxzxxxxxzxxxzzxxzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram