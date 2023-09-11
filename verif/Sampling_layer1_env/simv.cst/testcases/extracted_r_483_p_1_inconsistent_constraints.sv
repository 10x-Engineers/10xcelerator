class c_483_1;
    integer i = -79;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_483_1;
    c_483_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1z1xx0110z1zx00xxx0zz111zz11x100xzxxxxxzxzxxxzxxzzxxxxxxzzxxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
