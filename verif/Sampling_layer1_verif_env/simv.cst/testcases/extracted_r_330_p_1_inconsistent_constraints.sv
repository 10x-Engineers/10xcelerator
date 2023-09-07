class c_330_1;
    integer i = -53;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_330_1;
    c_330_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01zzz1zxz0zz01zz1zxxz1xzxz10000zzxzxxxxxxzzzzxzzzxzzzzzzxzxzzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
