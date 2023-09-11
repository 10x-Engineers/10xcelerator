class c_1079_1;
    integer i = -178;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1079_1;
    c_1079_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x1zx0xxx1zxz1x11z11zxzz01000xxz0zzxzzxzxzxzzzxzxxzzzzzzzxzzxxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
