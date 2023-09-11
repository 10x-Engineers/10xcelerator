class c_1414_1;
    integer i = -234;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1414_1;
    c_1414_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xzxz10x110111x1111zzxz0xz10z00xzxzzxzxzzzzxzzzxzzzxzxzxzxxzxzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
