class c_1398_1;
    integer i = -231;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1398_1;
    c_1398_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10zzzzz1x0z0z100x1x001x1zxx1011zzzxxzxxxxxxzxzxzzzxzzxxxxxzxxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
