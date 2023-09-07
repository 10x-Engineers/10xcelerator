class c_277_1;
    integer i = -45;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_277_1;
    c_277_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x1x00xxz1z00x01xzzz0zxx0zxxz001zzxzzzzxxxzzxxxxxxxzzxxxxzxzxxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
