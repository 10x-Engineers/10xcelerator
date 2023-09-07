class c_431_1;
    integer i = -70;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_431_1;
    c_431_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0z001zx10zxx0x1x0xz1xzz00101x01zzzzzzxzxzzxxzzxxzxxzxzzzzxxzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
