class c_1773_1;
    integer i = -294;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1773_1;
    c_1773_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zz11z0z10xz1z11xxz000001xzx00xxxzzxzxzzzxxzzzzxxxzzxxxzzzxzxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
