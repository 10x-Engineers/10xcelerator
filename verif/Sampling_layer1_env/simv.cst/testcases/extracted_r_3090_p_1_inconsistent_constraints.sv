class c_3090_1;
    integer i = -513;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3090_1;
    c_3090_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xxz0z1zx0x1x0z1zzxz0zz000x0z01zzzxxzxxxzzzxzzxzxxzxxxzzxxxzxzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
