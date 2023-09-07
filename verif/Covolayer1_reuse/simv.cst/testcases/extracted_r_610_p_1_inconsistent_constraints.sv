class c_610_1;
    integer i = -608;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_610_1;
    c_610_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z011xz0zz01xz10x10xz11z1111xx1z0xxzxxxxzzzzxxzzzzxxxxzzxzxxzzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
