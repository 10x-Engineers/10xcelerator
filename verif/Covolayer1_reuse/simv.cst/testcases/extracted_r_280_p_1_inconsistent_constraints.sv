class c_280_1;
    integer i = -278;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_280_1;
    c_280_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0xxx101101z1z10xzz10z00zz0zz0xx1xxxzxxxxzzzxzxzxzxzzzzxzxxzzzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
