class c_1871_1;
    integer i = -310;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1871_1;
    c_1871_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xz1xzx00001zx1xz10z000xzzzz1xz0zzxxzzxzzxxxzxxxxxxxzxzxzzxxxxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
