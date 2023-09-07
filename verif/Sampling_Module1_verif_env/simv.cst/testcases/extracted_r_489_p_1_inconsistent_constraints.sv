class c_489_1;
    integer i = 489;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_489_1;
    c_489_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x011zz0zz1xzxz01xz01xx0zzzxx1100zzxzxzzxzzzzxzxxxxzxzxzxxxzxxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
