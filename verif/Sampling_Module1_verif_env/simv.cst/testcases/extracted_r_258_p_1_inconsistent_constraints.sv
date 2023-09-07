class c_258_1;
    integer i = 258;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_258_1;
    c_258_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zx0zz0z0xz0x00x1z0x01zz00z110zxzxzxzzxxxzxzzxzxzzzzxxzzxxxxxzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram