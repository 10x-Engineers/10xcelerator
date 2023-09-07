class c_2492_1;
    integer i = -414;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2492_1;
    c_2492_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xz01x1zz0zz001xxx0zxx101xzzzx000zxxxzxxxxzxxzxzzxzzxzxxxzxxzzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
