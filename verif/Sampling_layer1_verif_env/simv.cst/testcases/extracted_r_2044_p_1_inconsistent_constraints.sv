class c_2044_1;
    integer i = -339;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2044_1;
    c_2044_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0zzxx0x0xz1x110xxz0zz1000xxx1xx0xxxxzxzxzzxzxxxxxzzzzxzzxxzzxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
