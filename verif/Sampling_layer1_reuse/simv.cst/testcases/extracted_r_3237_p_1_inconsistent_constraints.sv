class c_3237_1;
    integer i = -538;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3237_1;
    c_3237_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1zx00xzxxxx1x0zzx00zx010z1zx0zz0zxxxzxxxzzxzzzxzxzzxzzzxxzxzzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
