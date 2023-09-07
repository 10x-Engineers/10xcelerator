class c_1061_1;
    integer i = -175;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1061_1;
    c_1061_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z1x11xzz101zx0z10111zxx1x0z1zxz1xxzzxzzxzxzxxxzzzzxxzxzxxxzxzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
