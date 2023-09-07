class c_727_1;
    integer i = -120;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_727_1;
    c_727_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xxz0xz1z00111zxzx0z11zxxx1x00zz0xzxzxxzxzxxzxzxzzxzxzxxzzzzzxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
