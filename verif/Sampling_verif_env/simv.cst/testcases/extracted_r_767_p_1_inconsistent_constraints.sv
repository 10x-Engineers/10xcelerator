class c_767_1;
    integer i = 767;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_767_1;
    c_767_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xzzx0110zxz1x0xxzx11zxx1x0z11zx0zzzzzzzzxxxzzxzzzxzxxxzzzzxxzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
