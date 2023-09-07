class c_738_1;
    integer i = -121;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_738_1;
    c_738_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xx0z111z000xx1xx0zxxzx101011xz1xxxzxzzxxzxzzzxzxxxzzxxzzzzxzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
