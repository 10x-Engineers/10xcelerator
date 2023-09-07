class c_278_1;
    integer i = 278;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_278_1;
    c_278_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1zz1z0x0x00x1zzz0z0z101x01zx0zx1zxzzxxzxzzzzxzzzzxzxxzxxxxzzxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
