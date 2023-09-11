class c_387_1;
    integer i = -385;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_387_1;
    c_387_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "100zx110xx0zxx110x01zz1x0xzx0z1zxzzzxxxzzxxzzzxzzzzzxzxxzzxzxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
