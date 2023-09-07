class c_1025_1;
    integer i = -169;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1025_1;
    c_1025_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zxzxxz100x0z1x01xz0z0xx0x1zzx10zxzxxxxxzxxzzzzzzxxxzzxxzxzxxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
