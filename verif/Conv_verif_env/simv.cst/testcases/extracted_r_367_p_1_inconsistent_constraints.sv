class c_367_1;
    integer i = 367;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_367_1;
    c_367_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xz0100xxx001x110x0xzzxzx1z10xx0zzxzzzxxzxzxxxzzxxzzxzxzzzxxxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
