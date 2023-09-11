class c_1867_1;
    integer i = -310;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1867_1;
    c_1867_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0z10z10x1x00000zzxzz1xzzz1zx1zzxxxzzzzzzxxxzxxzzzxxxxzxxzxxzzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
