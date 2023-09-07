class c_3108_1;
    integer i = -516;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3108_1;
    c_3108_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1z0z10z1zxxx01z1zx10xx10zx10z100zzzxzxxzxzzxzzxxxzxxzxzxxzzzzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
