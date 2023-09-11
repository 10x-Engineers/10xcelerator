class c_263_1;
    integer i = -261;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_263_1;
    c_263_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x11z10zx111x1xz0z10x1x10xx1zz0x0zxzzxzxzzzzxxzzxxxzxzzzxxzxzxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
