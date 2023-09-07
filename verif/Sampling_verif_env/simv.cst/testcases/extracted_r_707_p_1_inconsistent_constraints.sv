class c_707_1;
    integer i = 707;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_707_1;
    c_707_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0zzxzxz1zxz1zzxz1xxx01zz00x1z11xzxzzxzzxzzxzxxxxzzxxxxzxxxzxzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
