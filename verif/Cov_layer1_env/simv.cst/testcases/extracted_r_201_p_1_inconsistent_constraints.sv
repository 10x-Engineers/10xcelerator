class c_201_1;
    integer i = -199;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_201_1;
    c_201_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11zx10x11z0xz1zzz10101xx1001111zxxzzxzzzxzxzxxxxxxzzzzxxxzzxzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
