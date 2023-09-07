class c_2407_1;
    integer i = -400;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2407_1;
    c_2407_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zxzx11zx00x00xz01zz1000x1x0z11zzzzzzxzzxxzxxxxxxzxxxxzxzxzzxxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
