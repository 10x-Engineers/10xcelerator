class c_217_1;
    integer i = -215;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_217_1;
    c_217_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzxxzxxx1xxzz0x00xxxxx1xxxx0xx10xxzzxzzzxxzxzzxzzxzzxzzzzxxzxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
