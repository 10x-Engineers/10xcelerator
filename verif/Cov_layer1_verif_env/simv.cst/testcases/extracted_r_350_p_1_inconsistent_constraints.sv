class c_350_1;
    integer i = -348;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_350_1;
    c_350_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "100zz11zx101xxxx0x0zzx11xxx00100xzzzzzzzxzxzzxxzzxzzzzxxxzxzxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
