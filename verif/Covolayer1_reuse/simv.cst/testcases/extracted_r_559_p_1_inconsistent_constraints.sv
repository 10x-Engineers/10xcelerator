class c_559_1;
    integer i = -557;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_559_1;
    c_559_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00zzz1x0x000xz1xz10xzzzzxx11x1xxzxzxxxxzzzxzxzzxxzxxzzxzxxxxxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
