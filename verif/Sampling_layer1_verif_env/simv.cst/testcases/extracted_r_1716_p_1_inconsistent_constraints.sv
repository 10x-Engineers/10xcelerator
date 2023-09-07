class c_1716_1;
    integer i = -284;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1716_1;
    c_1716_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "010x1x1xxxx1x11z0x1zzxz001zxxxxzxzzxzxzzzzxzzzxzxxxzxzxzzzzxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
