class c_607_1;
    integer i = 607;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_607_1;
    c_607_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10z0x0z100xx1010z1zz0z1z0xx1011zxzzzxxzzxzzxxzzxzxzxzzzzzxxzzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
