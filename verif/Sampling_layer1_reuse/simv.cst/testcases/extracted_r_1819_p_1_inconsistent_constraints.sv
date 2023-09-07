class c_1819_1;
    integer i = -302;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1819_1;
    c_1819_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zz10xzzxxzz00zz1zxx01x01x0z0zz1zzxzzxzzxxxxxzxxxzzxzxxzzxxzzxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
