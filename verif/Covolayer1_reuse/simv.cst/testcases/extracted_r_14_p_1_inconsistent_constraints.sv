class c_14_1;
    integer i = -12;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_14_1;
    c_14_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "001001z1zz1zxz1xx110000zx101x0z1xzzxzzzxzxzxzzzzzzxzxzzxxzzzzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
