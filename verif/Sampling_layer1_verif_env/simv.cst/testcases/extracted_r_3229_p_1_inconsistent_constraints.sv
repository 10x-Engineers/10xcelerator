class c_3229_1;
    integer i = -537;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3229_1;
    c_3229_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zz1zx0xzx1x0z10xx111z11xxx00xz1xxzxxzzzzxxzxxzzxxzzxxzxxzxxzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
