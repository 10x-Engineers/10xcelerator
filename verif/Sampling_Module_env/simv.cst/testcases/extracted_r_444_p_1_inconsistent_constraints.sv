class c_444_1;
    integer i = 444;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_444_1;
    c_444_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0x1z1x10x1zxx1zzz11011x1zxzz1xxxzzzzzxxxzzzxzxzxxzzxzxzxzxzxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
