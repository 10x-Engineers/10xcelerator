class c_1583_1;
    integer i = -262;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1583_1;
    c_1583_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zxz00x1x1xz100001zx0x001z1x01zz1xzxzxzzxzxxxxxxxzzzxxzxzzzxxzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
