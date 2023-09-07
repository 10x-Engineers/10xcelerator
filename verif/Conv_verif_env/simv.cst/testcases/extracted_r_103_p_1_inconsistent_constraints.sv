class c_103_1;
    integer i = 103;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_103_1;
    c_103_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzx0xxxzzz1zz1z10z000xx0z00zz01zxzzzzzxzzzzzxzxxxxzxzzxzzxxzxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
