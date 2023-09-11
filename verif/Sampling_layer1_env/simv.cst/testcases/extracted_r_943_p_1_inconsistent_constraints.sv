class c_943_1;
    integer i = -156;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_943_1;
    c_943_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z00zz00x10xz0xx0z000zxxx0z0xz0x0zxzxxxxxzzxxxzxxzxxxxxzzzxzzxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
