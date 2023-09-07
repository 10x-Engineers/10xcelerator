class c_1649_1;
    integer i = -273;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1649_1;
    c_1649_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "000zx001z0z10zxx000000zzx010z1z0zzxzzxxzzzzzxxxzxxxzzzxzxzxxxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
