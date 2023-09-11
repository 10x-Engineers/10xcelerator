class c_3147_1;
    integer i = -523;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3147_1;
    c_3147_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10z0z0zxx0zxzz11xxzxz1z100z0100xxxxzzxzxzzxxzzzzxxxxzxxzxzzxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
