class c_1848_1;
    integer i = -306;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1848_1;
    c_1848_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xx111x0z0x1xxx10x101xx1zxx1z00x1zzzzzxxzxxxxzzzxxzxxzxzxzxxzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
