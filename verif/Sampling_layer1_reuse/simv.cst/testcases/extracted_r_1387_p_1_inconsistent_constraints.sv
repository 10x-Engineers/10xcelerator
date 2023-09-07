class c_1387_1;
    integer i = -230;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1387_1;
    c_1387_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0z001z110x0x0z0zzx1zxz100x1zxx0xzzzxzzxxxzzxzxzxxxzxzxzzzxxzxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
