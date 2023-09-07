class c_497_1;
    integer i = -81;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_497_1;
    c_497_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0z1011z000zzxxz011z00000z011z100zzzzxxxzzzxzzxxxxzzxzzzxzxzzxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
