class c_2256_1;
    integer i = -374;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2256_1;
    c_2256_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zxzxz111z1x00z1z0z00x1x110zx01xxxxzzzzzzxzxxzxzxxzxxxxxzzxzzzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
