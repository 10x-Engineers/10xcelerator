class c_680_1;
    integer i = 680;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_680_1;
    c_680_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00x0x1xxxz011z0100110zzxzz00001zxzzzxzxxzzzxzzxzxxxxxxxzxzzxzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
