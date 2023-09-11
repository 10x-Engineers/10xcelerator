class c_2311_1;
    integer i = -384;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2311_1;
    c_2311_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z1zz0x0x1xxx1x0011z10x01110zx1zxzxxxxzxzxxxxzzzzxzxzzzxxxzxzxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
