class c_735_1;
    integer i = -733;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_735_1;
    c_735_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xx01zz100z110xzx00x10zx1x0111zxzzxxxxzzxzxzxxxzzzxzzxzzxzxxzxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
