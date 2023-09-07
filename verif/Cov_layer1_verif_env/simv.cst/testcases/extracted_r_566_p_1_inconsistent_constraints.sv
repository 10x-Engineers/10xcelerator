class c_566_1;
    integer i = -564;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_566_1;
    c_566_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11z00zzz1zxx10zxzz0xz1z011xx0z10xxxxzzzzzzxzzxzxzxxzxxxxzzzxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
