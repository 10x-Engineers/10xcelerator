class c_1995_1;
    integer i = -331;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1995_1;
    c_1995_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1x0z00xxx011001x11xx0010z10001z0zzxzxzzxxxzzxzzxxxzzzzxzzxxxzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
