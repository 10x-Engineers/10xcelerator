class c_656_1;
    integer i = 656;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_656_1;
    c_656_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z1z1x1xxx10111110111z1zzxzxzz0zxzxxzxzzxzxzxxzxzzxxzxzzxxzxzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
