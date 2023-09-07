class c_2919_1;
    integer i = -485;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2919_1;
    c_2919_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1010xx1xx010100101zzzz1z100z1z1xxxzzzzxzxzzxzzzzxxzxzzxzzxxzzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
