class c_1682_1;
    integer i = -279;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1682_1;
    c_1682_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z00z1xx011z0zxz0z010x1zx1x0xx0x1zzxxxzxxxxxxzzxxzxzxxzxxxxzzxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
