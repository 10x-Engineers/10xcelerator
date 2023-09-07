class c_785_1;
    integer i = -129;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_785_1;
    c_785_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x101110zz101x1x0z11zzx10z1x00z0xzxxzzxzxxxxxxzxzxzxzxxzxxxxxxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
