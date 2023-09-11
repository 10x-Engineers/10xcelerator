class c_551_1;
    integer i = 551;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_551_1;
    c_551_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x1x1x0z1xx1000xx110z0zzzxzzxx1zzxxxzxxxxxzxzzzxzxxzxzzxxzxxzxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
