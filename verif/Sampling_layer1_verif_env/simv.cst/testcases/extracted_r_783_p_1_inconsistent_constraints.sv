class c_783_1;
    integer i = -129;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_783_1;
    c_783_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzxzzx0xxzz100z001110111zz110xz0zxxxzzzxxxzzzzxzzzxzzxxxxzxxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
