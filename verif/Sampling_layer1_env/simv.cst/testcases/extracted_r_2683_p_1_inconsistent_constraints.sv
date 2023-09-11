class c_2683_1;
    integer i = -446;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2683_1;
    c_2683_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z11z0zxz11xzzxx1zz01zzxx10x00z1zxzxxzxxzzzxzxxzxzzxxzxzxxzxzxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram