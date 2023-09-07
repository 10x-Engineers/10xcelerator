class c_663_1;
    integer i = 663;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_663_1;
    c_663_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10x10xxxz100101z0zz0x10x0x0x0z01zxxxxxxzxxzzxxxxxxxzzxzxzzzxzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
