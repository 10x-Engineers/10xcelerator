class c_3391_1;
    integer i = -564;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3391_1;
    c_3391_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0xzx00x10z1z0zxxx1zxzxxxx11010zzzzxxxzzzzxzzxxxzxxxxzxzxxzxxxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
