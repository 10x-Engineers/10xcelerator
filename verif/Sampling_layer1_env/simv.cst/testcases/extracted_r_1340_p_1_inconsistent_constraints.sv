class c_1340_1;
    integer i = -222;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1340_1;
    c_1340_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0zxz10zx1z11z0xxz1xzz0x110zz0zxxxxxxxzzxxzxxxzxzxxzzzzzzxzzxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
