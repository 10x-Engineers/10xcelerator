class c_530_1;
    integer i = 530;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_530_1;
    c_530_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00z01x101z01x1zx0xx01zzxzzx0z1zzzzzxxxzzxxzxxzxzzxxzzzzzzzxzxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
