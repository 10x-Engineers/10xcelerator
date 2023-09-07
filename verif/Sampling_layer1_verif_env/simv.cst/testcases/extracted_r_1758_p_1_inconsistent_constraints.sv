class c_1758_1;
    integer i = -291;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1758_1;
    c_1758_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "110zxx01zz0010zzxx110xx01x1zzzzzxzzxzzxzxzzxzzxzzxxzxzzzxxzzzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
