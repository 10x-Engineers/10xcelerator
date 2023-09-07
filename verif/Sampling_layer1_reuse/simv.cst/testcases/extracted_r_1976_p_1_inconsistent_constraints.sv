class c_1976_1;
    integer i = -328;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1976_1;
    c_1976_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1x00x0xx01z1z0zx0zxxx0x1111x0zxzxzzzzxzzxzxzzxxxzzzzxxzzzzzxzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
