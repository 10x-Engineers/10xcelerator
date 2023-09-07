class c_162_1;
    integer i = -160;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_162_1;
    c_162_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xz0z101zxzxz1z1zz1z11x011zzzx001xxxzzzzxxxzzxxzzxzxzzxzxzxxzxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
