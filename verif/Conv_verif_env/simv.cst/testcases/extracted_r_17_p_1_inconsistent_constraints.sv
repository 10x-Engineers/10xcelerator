class c_17_1;
    integer i = 17;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_17_1;
    c_17_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0zzzzz110011zzx10xzx00xxxxz110xxzxzxzxxzzzzzxxzzxxxxzzxxxzzxxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
