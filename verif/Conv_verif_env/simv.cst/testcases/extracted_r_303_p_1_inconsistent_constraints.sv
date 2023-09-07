class c_303_1;
    integer i = 303;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_303_1;
    c_303_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z010x00101z10zxzx110xxzxzzz1zzzzzzxzxzzxzzxxxxxzxzxzxxxxxzxzzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
