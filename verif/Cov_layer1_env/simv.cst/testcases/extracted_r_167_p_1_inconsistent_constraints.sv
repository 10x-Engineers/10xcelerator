class c_167_1;
    integer i = -165;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_167_1;
    c_167_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1zzz1z11z101x0x0zz10x11zxz1xxx11zzzzzzxzxxxzxxxzzzzxzzzzzzxxzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
