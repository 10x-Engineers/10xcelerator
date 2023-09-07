class c_2085_1;
    integer i = -346;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2085_1;
    c_2085_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11x01x1zzz101zz1xx11z11z01xz0z10xzzzzzxxzzzzxxxzxzxzzxxzzzxzzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
