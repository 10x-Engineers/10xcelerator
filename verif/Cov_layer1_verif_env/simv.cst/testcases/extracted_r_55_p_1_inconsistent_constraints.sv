class c_55_1;
    integer i = -53;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_55_1;
    c_55_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1z1z1xx0xz0x1xzz111zzxz00zzz1zxxxzxzzzzzzxzzzzzzxxzzzxzxzzzxzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram