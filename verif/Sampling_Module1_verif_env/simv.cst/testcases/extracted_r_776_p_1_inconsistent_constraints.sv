class c_776_1;
    integer i = 776;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_776_1;
    c_776_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0zx01zx11000x1x10z1000x00z11z10xzxxxxzzxxzzzzzzzxzzzzxzzxxzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
