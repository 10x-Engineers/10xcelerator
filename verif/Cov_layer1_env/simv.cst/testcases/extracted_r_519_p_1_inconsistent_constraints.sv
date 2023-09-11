class c_519_1;
    integer i = -517;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_519_1;
    c_519_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z100xz11zx10zzz0zzzz01xz1zxzz0z0xxxzzzxxzxzxzzzxxzzxxzxxxzxxzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
