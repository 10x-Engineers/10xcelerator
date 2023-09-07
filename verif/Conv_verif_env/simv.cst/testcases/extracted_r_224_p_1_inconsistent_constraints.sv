class c_224_1;
    integer i = 224;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_224_1;
    c_224_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z10z0zz0zxz0001x0zxz0zz10z0z0100xxxxzzxxzxxxzxxxxzzzxzxxxzxzzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
