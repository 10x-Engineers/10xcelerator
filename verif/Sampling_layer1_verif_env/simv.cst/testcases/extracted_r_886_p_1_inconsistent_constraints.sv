class c_886_1;
    integer i = -146;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_886_1;
    c_886_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xx1xx0zzz10zx1z1xzx01xx101x00zxxzzxxzxzxzxxxzzzxxzzxxzxzzzzzxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
