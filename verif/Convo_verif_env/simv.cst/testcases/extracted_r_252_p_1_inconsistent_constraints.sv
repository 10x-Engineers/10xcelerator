class c_252_1;
    integer i = 252;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_252_1;
    c_252_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "011xxxx1zz1zz1zx10z0x1x0zx0x1x0zxzzzzzzzxxxxzzxxzzzxxzzxzxzxxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
