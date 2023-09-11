class c_1395_1;
    integer i = -231;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1395_1;
    c_1395_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xxz01z0zx1z1111x01x0110xxzxxx01xxzxxxzxxzzzxzxxxzzzxxxzxxxxzxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
