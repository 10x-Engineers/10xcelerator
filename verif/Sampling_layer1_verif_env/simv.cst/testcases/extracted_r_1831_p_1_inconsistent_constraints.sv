class c_1831_1;
    integer i = -304;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1831_1;
    c_1831_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11xxz1z01z0z1xzzz1z11xzz0x1z0z11xzzxxzzzxzzxxzzxxzxzxzzxxzxxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
