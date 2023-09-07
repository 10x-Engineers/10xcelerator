class c_46_1;
    integer i = -6;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_46_1;
    c_46_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zz1x1xx0xx11zz0010111x10zxz0xz1zzzzzxxxxxxzzxzzxzxzxxxxzxzxxzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram