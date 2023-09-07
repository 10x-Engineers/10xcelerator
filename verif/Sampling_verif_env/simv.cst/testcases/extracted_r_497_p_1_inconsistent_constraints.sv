class c_497_1;
    integer i = 497;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_497_1;
    c_497_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xzz1zx0z11x1z11xx0x0111zzz011zx0xzxzxxxzxzzxzxxxzzzzxxzzxxxxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
