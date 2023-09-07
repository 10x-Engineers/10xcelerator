class c_433_1;
    integer i = -431;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_433_1;
    c_433_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11zx1zzxxxzxz101xz0101z1zzxxxzx0xzxzxzxzxxxxzxzzxxxxzxzxxxzzzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
