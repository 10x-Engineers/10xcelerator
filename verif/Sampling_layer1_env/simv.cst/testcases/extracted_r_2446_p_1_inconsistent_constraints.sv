class c_2446_1;
    integer i = -406;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2446_1;
    c_2446_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z01z10x0z1x00z1x11z0zz10x1z01z1xxxzzxzxxzzxzzzzxzzxxxxxzzzxxzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
