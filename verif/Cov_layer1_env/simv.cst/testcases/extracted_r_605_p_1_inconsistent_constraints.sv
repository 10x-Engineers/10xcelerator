class c_605_1;
    integer i = -603;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_605_1;
    c_605_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0z1z0zzx0010zxz11z1z10xzxx1011x1zxzzzzxxxzzxzzzxzzzzxzxxxxzxxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
