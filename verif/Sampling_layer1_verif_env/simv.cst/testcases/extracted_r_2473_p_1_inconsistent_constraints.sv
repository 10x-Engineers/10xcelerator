class c_2473_1;
    integer i = -411;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2473_1;
    c_2473_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0xx01101x1x1111z0z01x01z11z011xxzxxzzzxzxzzzzzxzzxxxzzxxxzzxzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
