class c_428_1;
    integer i = 428;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_428_1;
    c_428_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00xz1zzxxxxzz11z0zz1z1xz0z0zzzx0xxzxzxzxxzzxzzxzzzxxzxzxxzxzxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
