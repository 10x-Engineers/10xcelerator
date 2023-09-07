class c_72_1;
    integer i = -10;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_72_1;
    c_72_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xz10zxxz01xx100x0zzz0z01x001xz0xzxxxxzzzzxzxzxzzzxxzzxzzxzxxxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
