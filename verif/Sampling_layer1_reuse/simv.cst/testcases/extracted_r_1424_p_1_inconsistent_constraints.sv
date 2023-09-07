class c_1424_1;
    integer i = -236;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1424_1;
    c_1424_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzxzz1x10zx1z0zz0x1x111xzx001zx1xzzzxxzxzzzzxxxxxxzzzzzxzxzzzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
