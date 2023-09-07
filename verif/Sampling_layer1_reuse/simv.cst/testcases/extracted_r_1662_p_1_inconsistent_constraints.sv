class c_1662_1;
    integer i = -275;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1662_1;
    c_1662_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xx0xzx1z10zxz0z1101001x01zzx11x0zxxxzzzzxzzzzxzzxzzxxzxzxzxxzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
