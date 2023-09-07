class c_634_1;
    integer i = 634;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_634_1;
    c_634_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0z0z10z1zz100zz010100z0zxz1x0xxzxzzzzxxxzxzzxxzzxxzxzxxxzxzzzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
