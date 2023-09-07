class c_67_1;
    integer i = -65;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_67_1;
    c_67_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1z01zx00x00xx111z110z010x0xx1xxzxxxxxzzxxxzzzxzzzzxxzxxzxzzxxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
