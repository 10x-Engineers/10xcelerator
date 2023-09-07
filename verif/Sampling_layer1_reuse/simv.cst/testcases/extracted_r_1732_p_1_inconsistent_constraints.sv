class c_1732_1;
    integer i = -287;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1732_1;
    c_1732_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0110101z0z001z0xz1zz111z0100x1x1xzxzxxzxxxzzxxzxxxxzxzxzxxzzxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
