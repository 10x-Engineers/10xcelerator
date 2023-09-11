class c_114_1;
    integer i = -112;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_114_1;
    c_114_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zz001xxz111xxx10z10zx110z0zx00x0zxzxzzzxzzxxzxxxzxzzxzzzzzxxxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
