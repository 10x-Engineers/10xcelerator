class c_1030_1;
    integer i = -170;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1030_1;
    c_1030_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x00x0z00xz1xz1x1xxxxzxz00xxz0101xxzzzzzxzzzxzzzzzxzzxzzzzzxxxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
