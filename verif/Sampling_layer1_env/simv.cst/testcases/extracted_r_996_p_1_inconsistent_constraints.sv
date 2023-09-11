class c_996_1;
    integer i = -164;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_996_1;
    c_996_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0xz1x0011xx1zxxx0z0z0xzxx00zzx0xzxxxxzzxxxxzzxzzzzxzzxzzzzzzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
