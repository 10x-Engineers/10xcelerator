class c_208_1;
    integer i = -33;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_208_1;
    c_208_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1zzzzxz11x0zzz00x00xxx1x1001x01xzxzxzxxzzzxzxxzzxxzzxzzzzxzzzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
