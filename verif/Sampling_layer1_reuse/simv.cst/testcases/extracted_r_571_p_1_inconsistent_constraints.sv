class c_571_1;
    integer i = -94;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_571_1;
    c_571_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10110z00zx1z01100xxx01xzz1z10001xzzzzzzxzzzzxxxxxxxzxxxzzxzzxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
