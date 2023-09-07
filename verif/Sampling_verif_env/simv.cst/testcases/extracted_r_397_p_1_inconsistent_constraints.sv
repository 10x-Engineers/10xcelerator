class c_397_1;
    integer i = 397;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_397_1;
    c_397_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11x0z1xxx1z0zz011xz11x010xzxzxz0zxzxxxxzzxzzzzxxxxxzxzzxxzzzxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
