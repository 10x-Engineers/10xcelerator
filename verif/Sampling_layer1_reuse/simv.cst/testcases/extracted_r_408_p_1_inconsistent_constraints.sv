class c_408_1;
    integer i = -66;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_408_1;
    c_408_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1x011z0z0x1z01xx1xxx1xx10x1zzz0xxxzzzxzzxxxzzxzxxzzxzzzxzzzzzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
