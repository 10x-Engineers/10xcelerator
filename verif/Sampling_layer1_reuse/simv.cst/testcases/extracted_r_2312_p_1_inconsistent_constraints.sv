class c_2312_1;
    integer i = -384;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2312_1;
    c_2312_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zxz100010100zz0zzxzxz0z1x011zz11zxzxxxxxzxxxzzzzxzxzzzxxzzzxxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
