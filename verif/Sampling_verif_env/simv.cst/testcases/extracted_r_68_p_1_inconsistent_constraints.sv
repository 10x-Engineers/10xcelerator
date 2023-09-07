class c_68_1;
    integer i = 68;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_68_1;
    c_68_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z1zzxz11z1zxx1111x0x1xx1x0z00x00xxzzxxzzzzzxzzzxxxzxzxzxxxxzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
