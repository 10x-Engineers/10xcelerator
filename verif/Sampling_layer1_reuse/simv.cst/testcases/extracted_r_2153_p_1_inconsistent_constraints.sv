class c_2153_1;
    integer i = -357;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2153_1;
    c_2153_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1zx1x1zx0xz0zxx0z0z0x10z1zxx1xz0xzzzzzzzxxxzxzxzxxzxxzzxzzzzzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
