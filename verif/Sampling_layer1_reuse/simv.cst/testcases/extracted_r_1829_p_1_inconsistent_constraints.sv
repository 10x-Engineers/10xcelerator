class c_1829_1;
    integer i = -303;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1829_1;
    c_1829_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z01x1zx11x1zz0xxxx1x1x000zz0zzxxxxzxxxzxzzxzzxxxxzzxxzxxzxzzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
