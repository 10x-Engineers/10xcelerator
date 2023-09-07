class c_3453_1;
    integer i = -574;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3453_1;
    c_3453_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x1z0z10101xx11zx1zx10zx110xx101xxxxxxxzxzxzxzzzxxzzxzxzzxxzzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
