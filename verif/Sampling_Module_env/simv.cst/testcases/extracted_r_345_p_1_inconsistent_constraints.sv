class c_345_1;
    integer i = 345;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_345_1;
    c_345_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0xxx1101x1z0z110xz0xxzx1z1xz1zxzxxzzzxzxzxxzxxxxxxxzzzxxxxxxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
