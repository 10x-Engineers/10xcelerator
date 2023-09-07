class c_2260_1;
    integer i = -375;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2260_1;
    c_2260_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zz101xx11zzzx011x00zz001xx0xx001zzzzxzxxzzxzxzxzzzzzzxzzzxxxxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
