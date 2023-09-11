class c_1793_1;
    integer i = -297;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1793_1;
    c_1793_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zx1zxxzxx1zx00z01xzz0111xzzzz110zxxzxzxzxzxxxzzzxxxzxxzxxxxzxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
