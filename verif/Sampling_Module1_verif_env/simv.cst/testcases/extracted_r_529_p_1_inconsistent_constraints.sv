class c_529_1;
    integer i = 529;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_529_1;
    c_529_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1zzx1110zxzxxz0zzx11zz1zzzx011zzzzzzxzxxzzxxzzxxzzxxzxzxzzzxzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
