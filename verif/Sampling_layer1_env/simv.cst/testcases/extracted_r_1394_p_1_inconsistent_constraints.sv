class c_1394_1;
    integer i = -231;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1394_1;
    c_1394_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zx10111x1x1xx0z00x0zxx0z1zxz00x0zzxxzxxxzxxxzzzxxxxzxxzxzzxzxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
