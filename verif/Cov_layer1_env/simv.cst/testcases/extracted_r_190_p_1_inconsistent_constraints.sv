class c_190_1;
    integer i = -188;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_190_1;
    c_190_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z10xx0zzzzx0zz000101zxz11x011x1zzxxzzzzzxzxzxxxzzxzxxzzxzzxxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
