class c_1110_1;
    integer i = -183;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1110_1;
    c_1110_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0xzxxz00x0x11x1x10zzx0z1x01zzz0xxzzzzxzxzzzzxxzzzzzxzzzzxzzxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
