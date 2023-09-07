class c_2224_1;
    integer i = -369;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2224_1;
    c_2224_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11zz1zx1110zzzz00zxz1zz01x10000zzzzzzzzxzzxzzxzxxzzzxxzxzxzxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
