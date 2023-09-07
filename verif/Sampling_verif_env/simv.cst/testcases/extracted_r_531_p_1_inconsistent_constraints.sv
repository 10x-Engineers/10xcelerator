class c_531_1;
    integer i = 531;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_531_1;
    c_531_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01zzx00zzx0xx0zzx10xx0xxz0z1011zxxzxzxxzzzxzxzxzzxzzzzzzzzzzzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
