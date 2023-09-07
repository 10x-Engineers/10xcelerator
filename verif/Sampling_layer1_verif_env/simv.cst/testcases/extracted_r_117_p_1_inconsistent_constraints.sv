class c_117_1;
    integer i = -18;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_117_1;
    c_117_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zz0zzx011x1zz10x00010x1z1110xx0xxxzxxzzzzxzzxxzxxzzzzzzzzxxzxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
