class c_516_1;
    integer i = 516;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_516_1;
    c_516_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xzz1x110zz10xxx1xx0xz1z01zx01xz0zzxxxxzxxzzzxxxxxzzxzxzzzzxzzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
