class c_378_1;
    integer i = 378;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_378_1;
    c_378_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0z011zz1zx10z01x0z1xzzz110zz0zzxxxzxzzzxxxzxzxzzxzzzxxxzzzxxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
