class c_1137_1;
    integer i = -188;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1137_1;
    c_1137_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z11zz10zzzz0z0x1xz1zxzz01z000x1zxxxzzxzzxzxxzxzzxzzzxxxxzzxxxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
