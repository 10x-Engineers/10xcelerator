class c_1504_1;
    integer i = -249;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1504_1;
    c_1504_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzz111z00x0z0x010x000010zxzzx00zzxzxzxxzxxzxxzxxxzxxxxxxzxzxzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
