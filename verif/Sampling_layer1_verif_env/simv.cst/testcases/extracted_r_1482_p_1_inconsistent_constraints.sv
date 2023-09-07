class c_1482_1;
    integer i = -245;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1482_1;
    c_1482_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1xx11x1z00z1101x00zz0100x00011xzxxxzxzzzzzxxxzzzxxzzzxxzzxxxzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
