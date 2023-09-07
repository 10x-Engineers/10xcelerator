class c_413_1;
    integer i = -411;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_413_1;
    c_413_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10010xx01z011zzx0z011x1100z01000xxxxzxzxzzxxxzzzxzzxzzzzxxxzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
