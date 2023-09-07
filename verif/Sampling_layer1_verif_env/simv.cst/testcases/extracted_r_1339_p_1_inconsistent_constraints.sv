class c_1339_1;
    integer i = -222;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1339_1;
    c_1339_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10xx1100z0x000z1xz10zx11z100001xxxzzzxzzxxzxxzzzzxxxxxxzzxzzzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
