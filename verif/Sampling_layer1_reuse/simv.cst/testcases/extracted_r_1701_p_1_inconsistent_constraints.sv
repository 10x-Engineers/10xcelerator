class c_1701_1;
    integer i = -282;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1701_1;
    c_1701_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1zzxz1xx10xz0xzzx1x1x1100zxx1xx0xxxzxzxzxxzxzzzzzzzxxxxzzzzzxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
