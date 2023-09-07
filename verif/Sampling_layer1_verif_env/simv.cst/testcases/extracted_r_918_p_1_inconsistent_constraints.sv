class c_918_1;
    integer i = -151;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_918_1;
    c_918_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0z0xxxxx0011zx110zzzxxxx1x00x000zzxxzzzxzxxxxzzxzzxzzzxzzxxzzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
