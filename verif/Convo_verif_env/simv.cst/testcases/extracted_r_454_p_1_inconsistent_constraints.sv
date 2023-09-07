class c_454_1;
    integer i = 454;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_454_1;
    c_454_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0x1zx1xx0x10z00z00110011z0xxzz0zzxzzxzzxxzxxxzxzxxxzzzxxzzzxzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
