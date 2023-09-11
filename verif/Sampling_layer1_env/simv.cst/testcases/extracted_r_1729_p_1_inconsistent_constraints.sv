class c_1729_1;
    integer i = -287;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1729_1;
    c_1729_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x00x1x0z11zzxz1zxxx01x1100xz1100zxxxzxzxxxzzzxzxxxzxzzzxzxzzzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
