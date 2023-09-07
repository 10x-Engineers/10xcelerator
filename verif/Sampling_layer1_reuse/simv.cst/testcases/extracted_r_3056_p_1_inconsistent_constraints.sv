class c_3056_1;
    integer i = -508;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3056_1;
    c_3056_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "111x01z0zzz101x00zz01z100zx1x0z0xzzxxxxxxzxxxxxxxzzzxzxxzzzzxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
