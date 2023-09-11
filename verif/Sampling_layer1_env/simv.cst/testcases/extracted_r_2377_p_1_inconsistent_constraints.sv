class c_2377_1;
    integer i = -395;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2377_1;
    c_2377_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1x1zxx11z0xx1x1x1x111x1zzz00x111xxxzzxxxxxxzzxzzxxxxxxxxxzzxzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
