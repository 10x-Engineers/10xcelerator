class c_582_1;
    integer i = -580;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_582_1;
    c_582_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xx0x110z100z10xzzxx101xzx01xx010xxzzzxxzzxxxzxxxxzzxxzzxzxzxxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
