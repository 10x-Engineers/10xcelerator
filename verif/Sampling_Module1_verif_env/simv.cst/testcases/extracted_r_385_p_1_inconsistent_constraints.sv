class c_385_1;
    integer i = 385;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_385_1;
    c_385_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1zxx1zxx0z1z00zzx10zzzxz10z0x01zxzzzzzxzzzzxxzxzzxxxxxxxxzzxxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
