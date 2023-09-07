class c_705_1;
    integer i = 705;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_705_1;
    c_705_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "000011zzzzz10x1x1xx0zxzz0110x1z1zxzxxzzxzzzxxzxxxxzzxxzzxzzzzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
