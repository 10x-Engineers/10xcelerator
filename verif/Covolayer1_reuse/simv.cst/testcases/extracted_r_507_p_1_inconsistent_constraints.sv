class c_507_1;
    integer i = -505;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_507_1;
    c_507_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1xxzx0xxxx10xzx0x01x011zz110z01zzxzxzxzzxzxxzxzzxzzxzxzxxxzxzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
