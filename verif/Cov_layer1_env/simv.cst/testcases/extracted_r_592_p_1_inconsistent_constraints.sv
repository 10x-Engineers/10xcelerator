class c_592_1;
    integer i = -590;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_592_1;
    c_592_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z10101xxxx10z1xx1z11z0z1z101xxxzxzzzxxxxzzzxzxxxzxxxxzxzxxxxzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
