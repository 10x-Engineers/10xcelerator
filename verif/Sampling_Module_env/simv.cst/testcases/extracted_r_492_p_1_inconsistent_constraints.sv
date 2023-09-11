class c_492_1;
    integer i = 492;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_492_1;
    c_492_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0zz0zz1z1x1xzx1z1zzz0zz10zzzzz00zzzzxzzzxxzzxzzxxxzzxzxxxxzxxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
