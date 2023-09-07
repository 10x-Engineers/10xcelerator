class c_38_1;
    integer i = -36;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_38_1;
    c_38_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0zxz1zxzzx11100z1xxx1x0xx01zzx10xxzxxxzxxzxxzzzxxzxxxxxxzxxxxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
