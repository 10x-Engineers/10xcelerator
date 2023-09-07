class c_435_1;
    integer i = -433;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_435_1;
    c_435_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0xz01xxz0zzzz1xxx11z1z0z1xzxxx11zxzzzxzzxxxxxzxzxzxxxzxzxzzzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
