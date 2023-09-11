class c_2572_1;
    integer i = -427;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2572_1;
    c_2572_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zz10xxzxxz110xx0z111zx0z0x00xz1xxxxzxxzxxxxxxzxxxzzxxxxzzxxxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
