class c_574_1;
    integer i = -94;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_574_1;
    c_574_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zx0z0zzz1z0xzzzzxxx1001000xxz010zzxxxxxxzzzzxzxxzxzzxzxxzxzxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
