class c_519_1;
    integer i = -85;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_519_1;
    c_519_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "001xxxx100x00111z1x0z00x0xzzxzxzxzxzxzzzxxzzxzzzxxxzzxxxxxzzxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
