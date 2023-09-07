class c_675_1;
    integer i = -673;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_675_1;
    c_675_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x00z0zxz00zx1z1zz0010001z10x0010zxzzzzxzxxxzzxzzzzzxxzzxzxzxzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
