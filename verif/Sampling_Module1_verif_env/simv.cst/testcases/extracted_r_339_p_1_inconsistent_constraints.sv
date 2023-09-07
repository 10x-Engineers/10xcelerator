class c_339_1;
    integer i = 339;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_339_1;
    c_339_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0x11zzz101x1001zz10zx1z11xx110z0xzzxzzxxzzzzxxxzzzzzzzxzzxxxzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
