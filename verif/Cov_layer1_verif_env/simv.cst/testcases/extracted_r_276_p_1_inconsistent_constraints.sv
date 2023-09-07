class c_276_1;
    integer i = -274;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_276_1;
    c_276_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xz11z10z111111xxx11x1x01zzx1xx0zxzzxzzzxzzzzxzzzxzxxxxxzzxxxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
