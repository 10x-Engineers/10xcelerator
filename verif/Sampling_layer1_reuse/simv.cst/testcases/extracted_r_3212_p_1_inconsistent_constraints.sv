class c_3212_1;
    integer i = -534;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3212_1;
    c_3212_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xzz1x111xx0x01zz1x0zx0x00x010zx1zxxzzzzxxzxzzxzzzzzxzzxxzzzzzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
