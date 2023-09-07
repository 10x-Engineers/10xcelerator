class c_211_1;
    integer i = -209;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_211_1;
    c_211_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xxxzzx101xz0x1xxz0z11xz00xxxz00zxxxxxxxzzzxxzxzzzxzxzzzzxzzxzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
