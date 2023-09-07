class c_84_1;
    integer i = 84;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_84_1;
    c_84_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1zxz0xxxzxxxxzzz110x0x001110z11zzxxzxzxxxxzzzzxzzzzzxxxzxxxxzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
