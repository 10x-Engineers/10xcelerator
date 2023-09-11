class c_2017_1;
    integer i = -335;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2017_1;
    c_2017_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xz10x0z01xxzx0z101xzz10xxz0zx011xzzxxxxzzxxzxxzxxxzxzzzxzxxxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
