class c_271_1;
    integer i = -44;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_271_1;
    c_271_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xxz0z1010zz1zzzz100x0x10xzxx10xxxxzzzzzxzzzxxzzzxzxxzxzxxxzzxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
