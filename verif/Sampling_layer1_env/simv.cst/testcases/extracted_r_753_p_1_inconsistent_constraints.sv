class c_753_1;
    integer i = -124;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_753_1;
    c_753_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zz00zx00x00z00zxxx0z1zxxzzz00zzzzzzzxxzzzxzxxxxxxxzzzxzxxzxzxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
