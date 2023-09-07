class c_516_1;
    integer i = -84;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_516_1;
    c_516_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1zz010xx10zzzxzxxx0x1x11x1x101xzzxxzxxzzxxxxxxxzzzzzzxzxzzxzxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
