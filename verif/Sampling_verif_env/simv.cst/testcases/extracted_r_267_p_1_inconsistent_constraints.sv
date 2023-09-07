class c_267_1;
    integer i = 267;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_267_1;
    c_267_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1x0x1xxxzx00z01xxz0xz00xz0zz1xzzxzzxxzzxxzxzzxzxxzxxzxxzzzxzzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
