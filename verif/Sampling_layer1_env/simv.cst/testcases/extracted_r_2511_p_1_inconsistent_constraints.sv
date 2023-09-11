class c_2511_1;
    integer i = -417;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2511_1;
    c_2511_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1zx1xx0z0x10z0x1010x0x0zz0x011xzzxzzxzxzxxzzxzxxzzxxzzxxxxzxxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
