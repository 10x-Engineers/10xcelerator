class c_214_1;
    integer i = -212;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_214_1;
    c_214_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0zz0z0xx11100xz1000000xxxzx001zxzxxxzxxxzzzzzzxzxzzxxzxxzzzzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
