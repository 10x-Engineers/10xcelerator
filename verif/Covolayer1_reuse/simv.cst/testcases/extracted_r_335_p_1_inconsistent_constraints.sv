class c_335_1;
    integer i = -333;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_335_1;
    c_335_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xzx01xx0z1x101x1111xz0z0xz10xx11zxxxxxxzxzzxzzxzxxxzxxxzxzzxzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
