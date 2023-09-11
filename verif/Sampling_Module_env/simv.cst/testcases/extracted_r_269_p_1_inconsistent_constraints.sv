class c_269_1;
    integer i = 269;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_269_1;
    c_269_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0101xz1z0xx111zz1x0z10x1xzxzzzzxxzxxxzxzzzxzzxxxxzzzxzxzxzzzzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
