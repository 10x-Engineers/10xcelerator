class c_1434_1;
    integer i = -237;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1434_1;
    c_1434_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "111z001zz1101x0x1z10xxz11z1x1z0xzxzxxzxxxzxzzxxxzzxxxzxxxzzxzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
