class c_249_1;
    integer i = -247;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_249_1;
    c_249_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0xz10zx0z0zz1z11z111xz1x1110x00zxzxxxzxzzzxxxzzxxzxzxzzxzxzxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
