class c_2316_1;
    integer i = -384;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2316_1;
    c_2316_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00111x0x1z0xxxz1z110zz1x00zzzzxxxzzxxzzzxxzzzzxzxxxxxzxzxxxzxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
