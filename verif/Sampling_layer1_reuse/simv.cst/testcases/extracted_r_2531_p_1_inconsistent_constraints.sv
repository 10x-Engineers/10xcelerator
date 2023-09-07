class c_2531_1;
    integer i = -420;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2531_1;
    c_2531_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xx11x1xxz1x11xz00zzz1xz0x1xxz001xzxzzxxzxzzzzxxxzzxzxzzxxzxxxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
