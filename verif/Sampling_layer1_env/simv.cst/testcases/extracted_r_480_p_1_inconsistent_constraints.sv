class c_480_1;
    integer i = -78;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_480_1;
    c_480_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xx1zz0x1x1xzzx0000zx101z1xx1zz0zzxxxzxzzzxxzzzzzzzzxxzxzzzxzzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
