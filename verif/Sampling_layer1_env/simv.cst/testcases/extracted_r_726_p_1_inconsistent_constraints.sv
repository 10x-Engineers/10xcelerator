class c_726_1;
    integer i = -119;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_726_1;
    c_726_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xx1x1110zx101xx1x0x1x10xz1x1zz0xzzzzzxxxzzxzzzxzzxzzxzxzzzzxzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
