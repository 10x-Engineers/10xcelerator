class c_1719_1;
    integer i = -285;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1719_1;
    c_1719_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "011z0x0x101zxzxx0z1z1zzz1x01x1z1xzzzzzxxxzxzxxzzzxzzxzzzxxxzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
