class c_202_1;
    integer i = -200;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_202_1;
    c_202_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0zxxxxzz11110xx10xzzx00z1x1zxx1zxzxxxzxxzxxxxzzxzxxxxxxxzzxxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
