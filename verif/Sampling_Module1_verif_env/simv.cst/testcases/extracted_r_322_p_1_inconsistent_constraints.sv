class c_322_1;
    integer i = 322;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_322_1;
    c_322_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z111x01xxxxz100z0x1xzzx1xxx11z0zzxxxzzxxzzxzzzzzzzxzzxxxxzxxxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
