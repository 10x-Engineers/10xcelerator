class c_1712_1;
    integer i = -284;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1712_1;
    c_1712_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzzxzxzx0z00x010z10z1z1zxx11xx10xzxxxxzzzzzxxxzxxxzzzzzxzxxxxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
