class c_2239_1;
    integer i = -372;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2239_1;
    c_2239_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00xz001xz00zz0x00x0z0x11xzx1010zzxxxxxzzxzxxzxzzxxxzxzxzxxzxxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
