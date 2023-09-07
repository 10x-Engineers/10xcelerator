class c_2641_1;
    integer i = -439;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2641_1;
    c_2641_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1xx10x011x01zxx00001xxzx1z10x01zzxxxzzxzzzxxzxxzzzzxzzxxxxxzzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
