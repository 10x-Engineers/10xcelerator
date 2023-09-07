class c_57_1;
    integer i = -55;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_57_1;
    c_57_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "111zz1xz1xxzzz0zz0xx00xx0011x0z1xzzzzzzzzzxzzxxzzzxxzxzzxxxxzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
