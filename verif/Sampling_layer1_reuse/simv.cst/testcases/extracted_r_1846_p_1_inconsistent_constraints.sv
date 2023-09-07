class c_1846_1;
    integer i = -306;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1846_1;
    c_1846_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1z001zz1zzx1100x01xz1zx11zx111x1xzxzzzxzzzxxzxzxxzxxzxxxxxxxxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
