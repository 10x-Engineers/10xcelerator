class c_2741_1;
    integer i = -455;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2741_1;
    c_2741_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01xxx00xxx0x1xx0x00x1xzzzxzxxxz0xzzzzzzzxxxzzxzzzzxxxzzzzzzxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
