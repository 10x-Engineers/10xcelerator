class c_153_1;
    integer i = 153;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_153_1;
    c_153_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zxz1xxx00xzxzxx1x1z1zz0xz00xz11xzzxxzxxzzxxzzxzzxzzzzzxxxzxzxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
