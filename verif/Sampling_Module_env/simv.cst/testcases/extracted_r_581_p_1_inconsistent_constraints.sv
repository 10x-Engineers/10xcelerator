class c_581_1;
    integer i = 581;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_581_1;
    c_581_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xx0x10z0x11x111xx0x011x111z00xzxxxzxxxzzxzzxzzxzxzxzxxxzxzzxxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
