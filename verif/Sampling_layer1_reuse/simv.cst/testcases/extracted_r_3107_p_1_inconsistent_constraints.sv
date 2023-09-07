class c_3107_1;
    integer i = -516;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3107_1;
    c_3107_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0x1x1x11x0001z0zx011x1zzz0xzzz1xzxzxzzxxxxzzxzzxxxzzzzzzzxzxxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
