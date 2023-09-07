class c_173_1;
    integer i = 173;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_173_1;
    c_173_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z1x1zzz1zxxzxzz01zxz0x1zxx0zx1xzxzxzxxzxxzxxzxzzzzzxxxxxzxzxxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
