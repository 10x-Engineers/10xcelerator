class c_285_1;
    integer i = 285;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_285_1;
    c_285_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11010zzx0zz1xz1111zxz00x1zzz1x0zxzzxxzxxzxzzxzzzxxzxzzxxzxzxzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
