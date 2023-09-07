class c_2684_1;
    integer i = -446;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2684_1;
    c_2684_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "000zxx1xxzxzzxx10x1zxxx1xz1xzxxzzzzxxxzxxxzxxzzxzzxxzzxxxxzxzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
