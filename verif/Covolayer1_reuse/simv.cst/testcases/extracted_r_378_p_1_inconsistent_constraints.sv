class c_378_1;
    integer i = -376;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_378_1;
    c_378_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0xx11zz0x1x1x11zzz100xzxz0z101zxzzzzxxzxzzzzzzzxzzzxxzzxzxxxxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
