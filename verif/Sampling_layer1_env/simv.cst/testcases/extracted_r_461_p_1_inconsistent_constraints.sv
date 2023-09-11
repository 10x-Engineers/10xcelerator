class c_461_1;
    integer i = -75;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_461_1;
    c_461_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x1zxxzxx1z0x0000zz0x10x1zx0z010xzzzxxzxxxzxzzzxzxxxzxzxzzxzxzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
