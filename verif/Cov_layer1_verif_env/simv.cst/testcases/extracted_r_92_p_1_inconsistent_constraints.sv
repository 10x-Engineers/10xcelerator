class c_92_1;
    integer i = -90;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_92_1;
    c_92_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01zz100z01zx11z1x0xx1z01z00x0x10xzzzzzzxzxzzxxzxxzxxzzxzzzzxzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
