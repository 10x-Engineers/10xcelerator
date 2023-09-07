class c_1911_1;
    integer i = -317;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1911_1;
    c_1911_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xx0110z100zzzz1xx11110xz00z0xx0zxxxxxxzzzzzzxzzxxzzzxzzzzzxxzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
