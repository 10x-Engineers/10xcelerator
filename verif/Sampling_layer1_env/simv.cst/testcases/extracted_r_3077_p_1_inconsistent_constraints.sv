class c_3077_1;
    integer i = -511;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3077_1;
    c_3077_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zz1xx0zx01z1x11zz0x11010x0x10xzxzxxxxzzxzxxxzzxzzxzxzzzxxzxzxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
