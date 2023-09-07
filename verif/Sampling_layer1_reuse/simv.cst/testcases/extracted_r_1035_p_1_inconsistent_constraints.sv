class c_1035_1;
    integer i = -171;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1035_1;
    c_1035_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xzz1101zxx0x1z10z1xz0xzx11z10zx1xzxxxzzzzxzxzxzxzzxxzxxzxxxzxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
