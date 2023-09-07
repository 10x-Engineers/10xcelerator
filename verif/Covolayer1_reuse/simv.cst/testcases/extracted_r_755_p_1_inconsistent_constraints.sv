class c_755_1;
    integer i = -753;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_755_1;
    c_755_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0001111z11xx101x01xzz00x000zzzzxxxzzxxxzzzxzzzzzzxxzxzzzzzxzzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
