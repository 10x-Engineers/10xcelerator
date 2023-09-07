class c_1614_1;
    integer i = -267;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1614_1;
    c_1614_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0zx10z00001101zx001100110z0xzz0zxzxxxxzxxzxzzxzxxzzxxxxxzxxzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
