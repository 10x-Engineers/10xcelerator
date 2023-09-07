class c_364_1;
    integer i = 364;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_364_1;
    c_364_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0z0011110x0z1zzxzz0110x1x00xzz1zxxzzxxxzzxxzzzzxzxzzxxzzzxxxxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
