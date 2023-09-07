class c_346_1;
    integer i = -344;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_346_1;
    c_346_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xz110z101x00x1x0zxxx1x10z1x00xxxzxxxzzxxzzzxxxxxxxxzzxxzxxxzzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
