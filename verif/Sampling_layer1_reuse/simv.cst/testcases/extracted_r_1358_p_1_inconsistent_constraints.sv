class c_1358_1;
    integer i = -225;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1358_1;
    c_1358_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xxz1xzz1zxzz1z10zz0zxz1xzx10zz01xzxxzxzxxxzxxxxzxzzxzzxxxzxxxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
