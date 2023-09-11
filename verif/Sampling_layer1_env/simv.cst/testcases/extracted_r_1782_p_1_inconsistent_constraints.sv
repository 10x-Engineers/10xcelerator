class c_1782_1;
    integer i = -295;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1782_1;
    c_1782_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1z1z001zx1z0xzxz101x1x1x0z0010x1zzxzxxxxxxzzxzzzxzxzxxzxzzzxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
