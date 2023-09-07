class c_329_1;
    integer i = -327;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_329_1;
    c_329_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "010z100xzz0xxxxzz11zzz11zz010110zxzzxzxzzxzxxzxzxxzzzxxzzxzxzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
