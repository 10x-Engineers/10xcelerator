class c_104_1;
    integer i = 104;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_104_1;
    c_104_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0xxxxxzz1x0xx1zz01100xz00xz011xzxxzxzxzzzzxxxxzzxxzzxzxxzxzxzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
