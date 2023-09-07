class c_32_1;
    integer i = -4;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_32_1;
    c_32_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xx10zxx011z0x0xz000xz0zz100x11z1xzxzzxzxxxxzzxxzxxzxxzzzzzzxxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
