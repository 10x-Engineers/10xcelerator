class c_568_1;
    integer i = 568;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_568_1;
    c_568_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x1zzxzzxxx0zx100110000x101z0zxz0zxxzxxxxzzxxzxzxzzxxxzzzxzzzxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
