class c_2238_1;
    integer i = -371;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2238_1;
    c_2238_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1zxxz0zxz011z1zx11xx0z1z0z0x1zz0zzxxzxzxzxzxzzzxzxxxxzzxxxzzxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
