class c_564_1;
    integer i = -562;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_564_1;
    c_564_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0xx0xz010x1zxzx0xx01x1001zz0z11zzxxxxxxzzxxzzzxxxxzxzxzzzxxxxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
