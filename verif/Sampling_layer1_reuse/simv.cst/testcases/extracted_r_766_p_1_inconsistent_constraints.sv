class c_766_1;
    integer i = -126;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_766_1;
    c_766_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10000x010x011zx0zxz10zxz011zzxzzxxxzzxzxzxzzxzzzzxzxxxzxxxzxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
