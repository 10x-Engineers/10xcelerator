class c_1806_1;
    integer i = -299;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1806_1;
    c_1806_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10x1z001xx0xxz1z0z0100z1z1x1z1zxxzzzzzzxxxzxxzxzzxzxxxxzxzzxzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
