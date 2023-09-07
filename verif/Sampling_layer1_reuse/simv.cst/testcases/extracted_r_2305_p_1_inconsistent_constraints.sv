class c_2305_1;
    integer i = -383;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2305_1;
    c_2305_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10zzx1x0z1xxz110x1xxx0zzx1xx0x10zxzzxxxzxzzxzzxxzzzxzxzzzxxxxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
