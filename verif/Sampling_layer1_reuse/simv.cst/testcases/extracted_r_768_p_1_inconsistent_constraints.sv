class c_768_1;
    integer i = -126;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_768_1;
    c_768_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11110x10xzxzz1011xx0xz10z1x00011zxzzxxzzzxzxxxzxxxxzzxzzzxzzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
