class c_1778_1;
    integer i = -295;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1778_1;
    c_1778_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0001xxz10zz0010z0xzz0011z1z1101zzzzxxxxxxzzxzxzzxxzzzzxxzxzzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
