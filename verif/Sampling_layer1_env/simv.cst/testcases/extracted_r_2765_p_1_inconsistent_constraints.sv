class c_2765_1;
    integer i = -459;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2765_1;
    c_2765_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z001z10z101xxz0xzzx10z0z000x0011zxzxzxzxxzxxzxzxxzxxzxxzxxxxxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
