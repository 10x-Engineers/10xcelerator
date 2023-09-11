class c_2788_1;
    integer i = -463;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2788_1;
    c_2788_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zx010zxx1zx00zzxz0z10z011x001xzzxxxxxxzxzxzzzxxxzzxzzzxzxxxzzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
