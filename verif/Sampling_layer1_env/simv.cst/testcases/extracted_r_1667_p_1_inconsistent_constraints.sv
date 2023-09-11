class c_1667_1;
    integer i = -276;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1667_1;
    c_1667_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "101zxxz0xzxxx11xzz011z0x001z1x1xxzxxxxzzxzxzzxxzxxzzxzzzxzxxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
