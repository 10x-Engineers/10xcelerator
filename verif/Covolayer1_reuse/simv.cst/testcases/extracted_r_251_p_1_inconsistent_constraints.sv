class c_251_1;
    integer i = -249;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_251_1;
    c_251_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0zz0110001010x11z01x0zzxz0z1z01zxzxzxzxxxzxzzxzzxzxxzxxxzzzzzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
