class c_66_1;
    integer i = -64;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_66_1;
    c_66_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11z10x1x0001xxz1zxzzxx11zx0xzxx1zzxzxxxxxxzxzzxzxxzzxzxzzxxxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
