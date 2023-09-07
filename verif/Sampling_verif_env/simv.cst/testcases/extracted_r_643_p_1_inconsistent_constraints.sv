class c_643_1;
    integer i = 643;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_643_1;
    c_643_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10xzz1xz1zxx1zz1zxz00zz01001x0zxzzxzzxzxxxxzzxxxzxxzzxxzzzzxzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
