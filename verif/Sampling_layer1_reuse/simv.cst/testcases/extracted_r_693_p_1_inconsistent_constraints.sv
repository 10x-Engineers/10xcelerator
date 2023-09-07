class c_693_1;
    integer i = -114;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_693_1;
    c_693_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "111x00z0xz0xx1x1zz10xzzxzxx0z0x1zzzzxxxzzxzxxxxxxxxxzzxzxzxzxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
