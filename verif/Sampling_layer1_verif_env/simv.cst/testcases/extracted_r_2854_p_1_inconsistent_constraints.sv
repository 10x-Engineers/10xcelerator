class c_2854_1;
    integer i = -474;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2854_1;
    c_2854_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z111xz11x10z11100x10z0x0xzxxz0z1xxzzxzxxxxzzxzzxxxxzzzzxzzxxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram