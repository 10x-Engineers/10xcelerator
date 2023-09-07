class c_191_1;
    integer i = -30;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_191_1;
    c_191_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z000z00x0x01xx01z0110z1001zz1001xxzzzxxzxxzxxzxzxzzxxxzxzzxxzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
