class c_2485_1;
    integer i = -413;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2485_1;
    c_2485_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x1x1x10xx01z11z0xx0xz01z111zz0xxxzxxzxxxzxxzxzxxxzzzzxzxxzxxxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
