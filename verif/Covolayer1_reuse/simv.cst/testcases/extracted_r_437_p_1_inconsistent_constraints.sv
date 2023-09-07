class c_437_1;
    integer i = -435;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_437_1;
    c_437_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z1x10z1x0xz0zx00z1xz1z101zxz001xzzzxzzzzxzxxxzxzzxxzxxxxzzzxzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
