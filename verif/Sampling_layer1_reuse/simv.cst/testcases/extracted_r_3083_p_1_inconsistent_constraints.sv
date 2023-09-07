class c_3083_1;
    integer i = -512;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3083_1;
    c_3083_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0x1x10z1xxzxxz1z0zx100zx0z00z11xxzxzzzzxxxxxzxzzzxzzzzxxxxzzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
