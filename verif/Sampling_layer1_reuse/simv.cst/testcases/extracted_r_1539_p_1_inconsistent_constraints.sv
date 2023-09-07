class c_1539_1;
    integer i = -255;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1539_1;
    c_1539_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x11zzz0xx0z0x1x10zz0zxx001000x1zxxzzxxxzxxzzzzxzxzzxxzzzxzzxxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
