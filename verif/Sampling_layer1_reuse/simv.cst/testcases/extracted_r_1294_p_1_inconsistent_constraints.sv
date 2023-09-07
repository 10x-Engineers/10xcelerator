class c_1294_1;
    integer i = -214;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1294_1;
    c_1294_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xzxxzx1z00x01z0zx0z11x00z0011zz0zxzxxxxzzxzxxzzzzzxzzxzxxxzzxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
