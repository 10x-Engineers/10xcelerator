class c_3174_1;
    integer i = -527;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3174_1;
    c_3174_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1xzx0z00zz1xxxxz01x1x1101zzxxx10xzxzxxxzxxxzzzxxxxxzzxzzxzxzxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
