class c_1171_1;
    integer i = -194;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1171_1;
    c_1171_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0zz101100zzxxz0011x1x1xxzz11z11xzzxxzxzzxzxxxzxxzzzzxzxxzzzzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
