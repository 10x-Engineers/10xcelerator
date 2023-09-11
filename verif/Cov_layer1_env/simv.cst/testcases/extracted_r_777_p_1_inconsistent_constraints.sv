class c_777_1;
    integer i = -775;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_777_1;
    c_777_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1z0z0z111x110x11z10z11zx100010z1xzzxxxxxxxxxxxxxxxxzzzxxzxxxxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
