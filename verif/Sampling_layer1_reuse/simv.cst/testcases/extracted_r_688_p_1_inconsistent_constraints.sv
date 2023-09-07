class c_688_1;
    integer i = -113;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_688_1;
    c_688_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11z0z00110xzx1110zz10x1zz0z1111xzxxzxzxzzxzzxzxzxxxxzxxxxzzzzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
