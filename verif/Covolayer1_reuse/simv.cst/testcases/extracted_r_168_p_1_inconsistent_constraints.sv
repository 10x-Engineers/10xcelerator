class c_168_1;
    integer i = -166;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_168_1;
    c_168_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x10zz0011xx11111x0xzz1x0zzxzx0z1zxxxxxzzzzzxzzzxxzzzzzzxxxzxzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
