class c_46_1;
    integer i = 46;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_46_1;
    c_46_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0001x11110zz1x1zxzz0xxzz0zx1z1x1zxxxxxxxxxxxzxzxzxxzzzzzxxxxxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
