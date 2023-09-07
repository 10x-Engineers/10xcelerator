class c_3268_1;
    integer i = -543;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3268_1;
    c_3268_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "110x00101z1xzz01z1x1xzzxx000x1z0xxxxzzzzxxzxxzxxxxzzzzzxzxzxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
