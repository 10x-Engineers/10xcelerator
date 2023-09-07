class c_3190_1;
    integer i = -530;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3190_1;
    c_3190_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xxz0zzzz11z011xx0x1xx1zz1zx01zz1xxzzxxxxxzxxzxzxzzxzzzzzzxzxzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
