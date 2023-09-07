class c_589_1;
    integer i = -587;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_589_1;
    c_589_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0zxx10zzz000z010xzxzz01zzx11x10zzzxzzzzzxzxzxxxxxzxzxzzxzzxxxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
