class c_26_1;
    integer i = -24;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_26_1;
    c_26_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x1xx10zz1011z01zx00zzzx1zxx10z01zzxzxzxzxzxzzzxzzzzxxzzzzzxxzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
