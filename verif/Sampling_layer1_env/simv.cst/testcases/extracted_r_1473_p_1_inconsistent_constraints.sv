class c_1473_1;
    integer i = -244;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1473_1;
    c_1473_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0zx11xzxzzz1x0z00xxz1111x01z0xx1xxxzzzzxxzzxxxzzzxzzxzxxxzxzxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
