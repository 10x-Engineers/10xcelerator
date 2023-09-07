class c_1784_1;
    integer i = -296;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1784_1;
    c_1784_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z000zx0xzxx1xxz111x000z1zz0z0000zxxzxzzxxxxxzxxxzzxxzzxzxxxzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
