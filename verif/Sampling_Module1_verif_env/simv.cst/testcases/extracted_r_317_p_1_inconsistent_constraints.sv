class c_317_1;
    integer i = 317;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_317_1;
    c_317_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x1011xz1zx00x0001z110z1x1zxx1010zzzxzzxxxxzzxxzxxzxxzzxxzxzzzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
