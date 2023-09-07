class c_494_1;
    integer i = 494;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_494_1;
    c_494_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0xzzxzx10zzx010xx10zx01x0z00z10zxzzzxxzzzzzxxxxxzzxzzxzzxzzxxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
