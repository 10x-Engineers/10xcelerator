class c_199_1;
    integer i = -32;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_199_1;
    c_199_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0zx00xzx0z100z1zz11z01z0x0zzzz10xxzzzzzxzxzxzxxxxxxxzxxzzxzxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
