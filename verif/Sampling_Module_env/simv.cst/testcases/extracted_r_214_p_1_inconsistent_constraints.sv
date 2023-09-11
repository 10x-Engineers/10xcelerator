class c_214_1;
    integer i = 214;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_214_1;
    c_214_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "110z0x1xxz0z1xzzx1xzzx1zxx0z0x0zzxxxzzxzzzxzzzzzzzxxxxzxzzzzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
