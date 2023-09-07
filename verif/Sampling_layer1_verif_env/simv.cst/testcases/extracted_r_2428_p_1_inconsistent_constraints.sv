class c_2428_1;
    integer i = -403;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2428_1;
    c_2428_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11xz00000z1xz0xzx1zz10xzz10x0x00zxzzzzzzzxxzzzxzzxzxxxzzzzzxzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
