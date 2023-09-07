class c_3309_1;
    integer i = -550;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3309_1;
    c_3309_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xz1xzx01zx0x1xxxz1zzzzx01x100xxxzxzxxxxzxxzzzzxxxxzzzzxxzzxxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
