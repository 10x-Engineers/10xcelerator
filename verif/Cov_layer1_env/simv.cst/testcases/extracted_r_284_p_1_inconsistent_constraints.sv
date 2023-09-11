class c_284_1;
    integer i = -282;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_284_1;
    c_284_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0zzzx11x0zzz0x1zz0zxzxx01zxz0xz0xxzzxxzxxxxzzzxxxzzxzzxxxzzzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
