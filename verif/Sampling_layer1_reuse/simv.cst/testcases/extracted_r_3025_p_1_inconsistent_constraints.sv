class c_3025_1;
    integer i = -503;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3025_1;
    c_3025_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01110010z11xx01zxxz1xxz10z00z1x1xxxxzzzzxzxxzxxzzxxxxzzzzzxzzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
