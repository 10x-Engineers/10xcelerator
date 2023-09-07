class c_1988_1;
    integer i = -330;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1988_1;
    c_1988_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xz0xzzxz10z1z0xzzx1000x0z111zx1xxxxzzzxxzxxzxzxzxzxzzxxxxzxzxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
