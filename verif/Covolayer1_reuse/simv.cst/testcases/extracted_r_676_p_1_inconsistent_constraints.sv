class c_676_1;
    integer i = -674;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_676_1;
    c_676_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z00x00zzz1zxzx1x11011z1zxx011z1zzxzzzxxzxxxzxzzzzxxzxxzxxzzzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
