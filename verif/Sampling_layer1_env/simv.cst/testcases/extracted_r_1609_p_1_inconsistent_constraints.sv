class c_1609_1;
    integer i = -267;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1609_1;
    c_1609_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1xzzz101z100000zx1xz01z10000x10xzzxzzxzxxzzzzzxzxzzxxxzxxzzxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
