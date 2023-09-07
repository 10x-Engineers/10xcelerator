class c_2656_1;
    integer i = -441;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2656_1;
    c_2656_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0xxzxz1x11x01xz0zx0xxz101zzx0xzzxzxxzxzzxxxzzxzzzxzxzxzxzzzzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
