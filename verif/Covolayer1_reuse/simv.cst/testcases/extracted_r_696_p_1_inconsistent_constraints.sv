class c_696_1;
    integer i = -694;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_696_1;
    c_696_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zxz1xx0111x1xz1x001x0xzx01xx10xzxxzxxzzxxzxxzzxxxxzxzzxzzzzzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
