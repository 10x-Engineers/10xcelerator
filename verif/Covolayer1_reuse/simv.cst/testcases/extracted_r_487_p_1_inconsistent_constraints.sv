class c_487_1;
    integer i = -485;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_487_1;
    c_487_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "111xx1z0xxxxzzx0z000zx0zz1xxzzzxzzxxzxzzzzxzxzzxxzxzxzzxxzzxzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
