class c_163_1;
    integer i = -161;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_163_1;
    c_163_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z11zzxzzx00000xzzxxz001zx0zz0110xxxzzxzxzxzzxzxxzxxxzzzzzzxzxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
