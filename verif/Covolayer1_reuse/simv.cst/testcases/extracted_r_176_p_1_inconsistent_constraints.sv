class c_176_1;
    integer i = -174;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_176_1;
    c_176_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0zx0000110z1xx10zzzzz0zz1z11z10zzzxzzzzzxxzxzzzzzzxzxzxzzzzxxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
