class c_552_1;
    integer i = -550;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_552_1;
    c_552_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0zxxxz1xx01zx000z1000z01x1xx1xzxzzxzxxxzzxzxzxzxzxxxxzzzzxzzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
