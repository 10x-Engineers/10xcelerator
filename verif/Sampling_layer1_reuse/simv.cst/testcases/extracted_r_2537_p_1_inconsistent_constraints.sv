class c_2537_1;
    integer i = -421;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2537_1;
    c_2537_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00z11zx1z1zxxx1xzx0z1zz10zzz0z01zzzzxxxxxxzzxxzxzxxzzxxzxxxzzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
