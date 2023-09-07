class c_424_1;
    integer i = -422;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_424_1;
    c_424_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0010z00xz1xzzx101xz1xxx11xxx1x0zzxzxzzzzxxxxxxxxxzxzxzxxxxxzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram