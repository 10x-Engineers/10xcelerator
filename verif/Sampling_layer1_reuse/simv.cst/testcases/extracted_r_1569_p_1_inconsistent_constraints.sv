class c_1569_1;
    integer i = -260;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1569_1;
    c_1569_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z10xx1x0xzzz000zxxx01xzxxzzzz1z1xxxxzzzxzxzxzzzzxxzzxzzzzzzxzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
