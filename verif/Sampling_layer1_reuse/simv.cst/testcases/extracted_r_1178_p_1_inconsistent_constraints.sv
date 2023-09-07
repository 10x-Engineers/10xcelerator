class c_1178_1;
    integer i = -195;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1178_1;
    c_1178_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x001zz1zzz1zz101xxzz1100zzx11x1zzxxzxzxxxzzzxzxxzxxzzzxxzxxzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
