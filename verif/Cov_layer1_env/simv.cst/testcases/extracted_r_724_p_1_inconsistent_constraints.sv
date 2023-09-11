class c_724_1;
    integer i = -722;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_724_1;
    c_724_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x10zxz010z0xx0z0xz0zz101xxz0zxzzzxxzxzzzzzzxzxxxzzxxxzxxxxzzzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
