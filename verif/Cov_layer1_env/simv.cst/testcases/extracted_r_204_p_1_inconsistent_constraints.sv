class c_204_1;
    integer i = -202;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_204_1;
    c_204_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1zz0zx1xzz10x10zxz1101xxz11xzx10zxzxxzzzzzxxzzzzzzxzxxxxzzxxzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
