class c_134_1;
    integer i = 134;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_134_1;
    c_134_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "111z10xxxzx0x00xxx1101xxzxzzzxxzxzzzxzxxxxxzxzxxxxxzzxxxxxzzzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
