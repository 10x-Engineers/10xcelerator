class c_3030_1;
    integer i = -503;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3030_1;
    c_3030_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzx000z1001x1z0x10010xzz1zx1zx00zxzxzzzzxzxxzzxxzzzxzzzxzxxzzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
