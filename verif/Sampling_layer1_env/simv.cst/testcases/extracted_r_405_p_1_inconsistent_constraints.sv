class c_405_1;
    integer i = -66;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_405_1;
    c_405_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "110zxxz1xxz1x000xxz001xz0z101001zzxzzzzzxzzzzzxxzxxxzzxzxxxzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
