class c_80_1;
    integer i = 80;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_80_1;
    c_80_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xx10z00x00x1z0x1000z001001xzz010zzzzzxzzzxzxxxzzxzxxxxzxxxzzxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
