class c_1376_1;
    integer i = -228;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1376_1;
    c_1376_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1zxx0x0x0x111z0zzzx0x0x1zz1x1xz0zzxzzxzxxzzxzxxzxxzxxxzzzxxxzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
