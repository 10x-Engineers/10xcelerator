class c_237_1;
    integer i = 237;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_237_1;
    c_237_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzz1xz100z00zx110z1xxz0zz1xxx11zzxzzxzzzzzxzzzxzxzxxzxxzxxxzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
