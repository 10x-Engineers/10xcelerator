class c_235_1;
    integer i = 235;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_235_1;
    c_235_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0x011xx0zzx01zz1011zz00xxxz111xxzzzxxzzxxzxzzxxxzxxxxxzxxxxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
