class c_312_1;
    integer i = -310;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_312_1;
    c_312_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xx11x10z1xx10z1zz110zzz1x00x11z0zxxzxzxxxzzzxzzzxzxzzzxxxxzzzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
