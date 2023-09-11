class c_917_1;
    integer i = -151;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_917_1;
    c_917_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0zxx1z1zxz1zzx0zxxz0xxx1x10x1zz0zxzzxzxzzxxxzxxzzzxzxxxzzzxzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
