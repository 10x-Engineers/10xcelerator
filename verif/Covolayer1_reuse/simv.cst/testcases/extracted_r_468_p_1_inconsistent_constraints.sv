class c_468_1;
    integer i = -466;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_468_1;
    c_468_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z011z0zx1xz1x10zxxz0zz111xx1xxzzzxzxzxzxzzxzzzzxxzxzzxzxxxzxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
