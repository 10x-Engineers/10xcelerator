class c_305_1;
    integer i = 305;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_305_1;
    c_305_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0zzz01x1xx1100xz00zzxz011000z00xzxxxzxxzxzxzxxxxzxxxxzzzzzzzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
