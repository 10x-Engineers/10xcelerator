class c_24_1;
    integer i = -2;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_24_1;
    c_24_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "110zxx10zx1000zx0z0x1xx10x1xzzxzzxxxzzzzzzzxxzzzxzzzxzxxxzzzzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
