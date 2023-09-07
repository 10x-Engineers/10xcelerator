class c_3265_1;
    integer i = -543;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3265_1;
    c_3265_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0111zzzzzx1xz1z11zz0011z0zx1000xxxzxxzxzxxzzxzxxzxxzxzzzxzxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
