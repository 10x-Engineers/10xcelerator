class c_1807_1;
    integer i = -300;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1807_1;
    c_1807_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzxzzz1xzx11z010z1zx1x11x00z00xzxxzzxzxxxzzzxzzzxxzxzzzzzxzxzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
