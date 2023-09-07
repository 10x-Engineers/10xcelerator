class c_411_1;
    integer i = -409;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_411_1;
    c_411_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0xz01zzx10xxzxx101xx0xx0zz0xzx1zzxxxzzxzxxxxxzxzxxzxzxxzxxxzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
