class c_1737_1;
    integer i = -288;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1737_1;
    c_1737_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xxz0xxzxxz10x1001zz00zxx1zzxx11xxxxxxxxxxzxxzxxzxzxxzzxzzxzxzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
