class c_2645_1;
    integer i = -439;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2645_1;
    c_2645_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xxxx00z1001x1x001zzxxx101zxx10zzxxxzzzzzzzxxxxzxzzxxxxxzxzxxxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
