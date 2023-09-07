class c_583_1;
    integer i = 583;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_583_1;
    c_583_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1xx011000xx10xz11zxz10xz11zzzx10zzxxxxzxzxxxzxxzzxxzxxxxzxxxzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
