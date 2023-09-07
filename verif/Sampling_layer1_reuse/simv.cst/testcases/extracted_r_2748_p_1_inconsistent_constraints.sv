class c_2748_1;
    integer i = -456;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2748_1;
    c_2748_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzxz0xx1x01x0xz1xx1zz1x11x00xz11xzxxzxzzzzxxxxxzzzxzzzzxzxxxxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
