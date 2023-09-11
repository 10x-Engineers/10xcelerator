class c_3375_1;
    integer i = -561;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3375_1;
    c_3375_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z1z11zx1x10z0zz110xxz0011xx1xzx0zzxzzzzxxxzxzxzxzxzzxxzxxzzzxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
