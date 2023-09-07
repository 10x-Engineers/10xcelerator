class c_642_1;
    integer i = 642;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_642_1;
    c_642_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xxx1x1x0z1z0z10zx001011x0zz11xz0zxzzxxxxzzzxzzzzxzxxzzzzzzzxzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
