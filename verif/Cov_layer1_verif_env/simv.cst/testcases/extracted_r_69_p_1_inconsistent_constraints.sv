class c_69_1;
    integer i = -67;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_69_1;
    c_69_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0z00xzzzxxx100101zxz1zxz01xxxx1xxzxxzzzxxxxzxxxxxzxzxxzzxzxzzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
