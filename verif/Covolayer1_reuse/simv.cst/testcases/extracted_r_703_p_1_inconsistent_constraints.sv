class c_703_1;
    integer i = -701;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_703_1;
    c_703_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01xz0xzzx0x11xxxzxz0110xx010001zxxzzxxxzzzxxzzzxzxzxxxxxzzxxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
