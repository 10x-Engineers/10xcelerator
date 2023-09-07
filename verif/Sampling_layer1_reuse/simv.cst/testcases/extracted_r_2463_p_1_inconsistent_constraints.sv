class c_2463_1;
    integer i = -409;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2463_1;
    c_2463_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11x00x10zzz10z1111xz0zzzzx0x0x00zxxxxzzzzxxzzzxxxzzzzzzxxxzzxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
