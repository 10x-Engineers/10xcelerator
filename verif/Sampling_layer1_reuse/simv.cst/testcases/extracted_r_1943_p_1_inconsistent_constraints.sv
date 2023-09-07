class c_1943_1;
    integer i = -322;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1943_1;
    c_1943_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xzzx0z0z1xxx0zxzxz1xx0xx01000zz1xxzxzxxzxzxxzzzxzxzzxxxxxzzzxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
