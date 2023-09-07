class c_558_1;
    integer i = -556;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_558_1;
    c_558_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzxz11z1x101x11z1zz1xxxzx0z0zz10zzxxzzzxzxzzzzzzzzxzzxzxxzzzxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
