class c_1956_1;
    integer i = -324;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1956_1;
    c_1956_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00z0xxzx00z00xxz0x011x1101z1x0xxzxxzxzzzxzzxzzzzxxzxxzzxxzzxxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
