class c_150_1;
    integer i = 150;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_150_1;
    c_150_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0z11111111x00110x10x1zz11x0z1zxzxxzzzxzzzxxzzzzxzxzxzzxxxzzzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
