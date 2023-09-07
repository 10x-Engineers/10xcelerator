class c_1384_1;
    integer i = -229;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1384_1;
    c_1384_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1011z0xzz1x1101x0x11x00z11zzzzxxzxzzxxxxxzzzxxxxzxzzxzzxzzzzzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
