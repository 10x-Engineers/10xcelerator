class c_2307_1;
    integer i = -383;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2307_1;
    c_2307_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z1zxx10z00xxz10z0001z0z010010x11zzzxxxxxxzzzxzzxzxxzzzzxxxxzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
