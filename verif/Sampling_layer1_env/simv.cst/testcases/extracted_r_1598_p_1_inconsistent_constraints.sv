class c_1598_1;
    integer i = -265;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1598_1;
    c_1598_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00zx1zzx0z0x110xxx00x10xxx0z1z00zxxxzxxzxxxxzzzxzxzzzxxxzxxzxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
