class c_112_1;
    integer i = 112;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_112_1;
    c_112_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "000zxz1xzzzx010xz1z0zz00z0zzzzzzxxzzxzzzzzxxzxzzxzzxxxzxxzxxxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
