class c_261_1;
    integer i = -259;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_261_1;
    c_261_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "111zxz01x0xz0110zxx0xxx11z0xxxzxxxxxxxzzxzxxzxxzxzxxzzzxzxxxzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
