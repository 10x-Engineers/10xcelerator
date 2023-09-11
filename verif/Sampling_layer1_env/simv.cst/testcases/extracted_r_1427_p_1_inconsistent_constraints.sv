class c_1427_1;
    integer i = -236;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1427_1;
    c_1427_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00zxzzxx0z10z0000x000x0xxxz0x0zzxxzxzxxxxxzzzxzxzzxxxxzzzzzxzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
