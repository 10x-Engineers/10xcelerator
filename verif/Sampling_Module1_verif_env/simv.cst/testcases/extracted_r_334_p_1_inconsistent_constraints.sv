class c_334_1;
    integer i = 334;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_334_1;
    c_334_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzz0011111z001z110z010z1z1z0xz01zxzxxxxxzxzxxzzxzxzzxzxzxxzxzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
