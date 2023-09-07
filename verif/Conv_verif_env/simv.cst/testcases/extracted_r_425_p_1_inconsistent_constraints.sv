class c_425_1;
    integer i = 425;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_425_1;
    c_425_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xz11x1zxzx11110xz10z10z0z00x10z0xzzzzzxzxzxzxzzzzxzzxzxxzzzzzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
