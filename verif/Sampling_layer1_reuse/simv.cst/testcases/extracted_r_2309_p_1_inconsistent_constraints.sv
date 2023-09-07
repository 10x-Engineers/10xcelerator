class c_2309_1;
    integer i = -383;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2309_1;
    c_2309_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xxx1xz1x0x111x0xzz1z00x10zx11zz0zxxzzxzxzxxxxxxzxxzxxzzxxxzxxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
