class c_328_1;
    integer i = -326;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_328_1;
    c_328_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1x00xzz0z0zx0zz110000zx10z1xxz1xxxxzzxzzzxxxxzxxzzxzxzzzzxzzxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
