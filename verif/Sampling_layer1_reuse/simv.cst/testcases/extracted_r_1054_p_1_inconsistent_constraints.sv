class c_1054_1;
    integer i = -174;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1054_1;
    c_1054_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zx1zzxzz01010xzx1xz001xxx00x01z0zzxxxxxxzxzzxzxxzzxzxzzzxzxxzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
