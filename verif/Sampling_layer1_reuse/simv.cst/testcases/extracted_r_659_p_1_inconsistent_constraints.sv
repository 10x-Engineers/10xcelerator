class c_659_1;
    integer i = -108;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_659_1;
    c_659_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1011101x1x010x1xzx1x111zxz00x0x0zzxxzxzzzxxxxzxzzzxxzzxxzxzxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
