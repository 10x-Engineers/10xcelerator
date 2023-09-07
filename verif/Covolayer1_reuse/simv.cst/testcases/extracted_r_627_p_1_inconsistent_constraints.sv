class c_627_1;
    integer i = -625;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_627_1;
    c_627_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01xxxx1x1x0x0z11x1x00xx1z00zzxx1xxxxzzxxzxzxxxxzzxxxzzzzzzxzzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
