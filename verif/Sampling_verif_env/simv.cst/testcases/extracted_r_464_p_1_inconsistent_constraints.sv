class c_464_1;
    integer i = 464;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_464_1;
    c_464_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zxz1xzz1zxzz1z000x1xxxzz0x0xx11zzzzxzxxxzxzxzxxzxxxxzzzxxxxzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
