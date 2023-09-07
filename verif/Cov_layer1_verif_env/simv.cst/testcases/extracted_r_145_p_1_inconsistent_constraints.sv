class c_145_1;
    integer i = -143;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_145_1;
    c_145_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xx01x1zxz0zxz0x1x0zxz0z0xz0zx100xxzxzxxzxzzxxzxzzxzxzxzzzzzzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
