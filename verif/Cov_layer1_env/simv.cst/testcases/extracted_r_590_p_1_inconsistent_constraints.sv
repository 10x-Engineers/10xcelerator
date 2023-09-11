class c_590_1;
    integer i = -588;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_590_1;
    c_590_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1x1zz11xz0z0x0zxz1xzxx111z01x101xzxzxxxzzzzxxzxzzxxxzxxzzzzzzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
