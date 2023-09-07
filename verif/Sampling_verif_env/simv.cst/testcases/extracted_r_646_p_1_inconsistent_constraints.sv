class c_646_1;
    integer i = 646;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_646_1;
    c_646_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "000xx11x0zzxxx110x10z0xz001zzxzxzzzzzzxzxzzzxxzzxzxzzxxzzxzzzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
