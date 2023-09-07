class c_272_1;
    integer i = -270;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_272_1;
    c_272_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zxxzzz00010z00xx01zz11zzzxz1xx01zxzzxzzxzxzxxxzzxxzzzxzzzxzzzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
