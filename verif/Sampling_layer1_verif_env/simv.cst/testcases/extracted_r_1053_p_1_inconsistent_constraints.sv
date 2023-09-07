class c_1053_1;
    integer i = -174;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1053_1;
    c_1053_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xzx011x01zx00zzx01000z011zxzx11xzxxzzzxzxzzzzzzxzzxxzzxzxzzzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
