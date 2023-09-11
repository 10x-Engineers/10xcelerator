class c_664_1;
    integer i = -662;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_664_1;
    c_664_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1z0z10xz01zzxx1zx0zxx1zz11xx0xxzxzxxxxxzzzzzzzxxxzzzxxzxzxzxxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
